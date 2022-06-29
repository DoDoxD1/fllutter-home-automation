import 'dart:io';
import 'dart:typed_data';

import 'package:aws_iot_api/iot-2015-05-28.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/message_provider.dart';
import 'package:sample/provider/things_provider.dart';

class ManageThingActivity extends StatelessWidget {
  final ThingAttribute thing;

  ManageThingActivity({Key? key, required this.thing}) : super(key: key);
  late TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final thingsList = context.watch<ThingsList>().thingsList;
    final msg = context.watch<Messages>().msg;
    return WillPopScope(
      onWillPop: () async {
        context.read<Messages>().empytMsg();
        return true;
      },
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.indigo.shade50,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Center(
                child: Icon(
              Icons.menu,
              color: Color(0xFF344356),
              size: 30,
            )),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Color(0xFF344356),
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: FlatButton(
                onPressed: () {
                  delete_thing(context);
                },
                child: Icon(
                  Icons.delete_outline,
                  color: Color(0xFF344356),
                  size: 30,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Thing Name: ${thing.thingName.toString()}",
                style: TextStyle(fontSize: 18),
              ),
              Text("Thing Arn: ${thing.thingArn.toString()}"),
              Text(context.watch<Messages>().msg),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        get_messages("flutter", context);
                      },
                      child: Text("Refresh Message")),
                  ElevatedButton(
                      onPressed: () {
                        openDialog(context);
                      },
                      child: Text("Send Message"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListThingsResponse listThingsResponse = new ListThingsResponse();
  AwsClientCredentials awsClientCredentials = new AwsClientCredentials(
      accessKey: "AKIA4DLDDHWDGTI74QPG",
      secretKey: "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");
  late IoT iot =
      new IoT(region: "us-east-1", credentials: awsClientCredentials);

  void delete_thing(BuildContext context) async {
    bool deleted = true;
    try {
      await iot.deleteThing(thingName: thing.thingName.toString());
      context.read<ThingsList>().removeThing(thing);
      Navigator.pop(context);
    } catch (e) {
      deleted = false;
      print(e);
    }
    if (deleted)
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Thing deleted successfuly"),
      ));
    else
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error deleting thing"),
      ));
  }

  void get_messages(String uniqueId, BuildContext buildContext) async {
    ByteData rootCA = await rootBundle.load('assets/RootCA.pem');
    ByteData deviceCert = await rootBundle.load('assets/deviceCertificate.crt');
    ByteData privateKey = await rootBundle.load('assets/private.key');

    SecurityContext context = SecurityContext.defaultContext;
    context.setClientAuthoritiesBytes(rootCA.buffer.asUint8List());
    context.useCertificateChainBytes(deviceCert.buffer.asUint8List());
    context.usePrivateKeyBytes(privateKey.buffer.asUint8List());

    final MqttServerClient client =
        MqttServerClient('a1gsbdcd7xwjfd-ats.iot.us-east-1.amazonaws.com', '');

    client.securityContext = context;
    client.logging(on: true);
    client.keepAlivePeriod = 20;
    client.port = 8883;
    client.secure = true;
    client.onConnected = onConnected;
    client.onDisconnected = onDisconnected;
    client.pongCallback = pong;

    final MqttConnectMessage connMess =
        MqttConnectMessage().withClientIdentifier(uniqueId).startClean();
    client.connectionMessage = connMess;

    await client.connect();
    if (client != null &&
        client.connectionStatus!.state == MqttConnectionState.connected) {
      print('conected successfully');
    } else {
      print('not connected');
    }

    String topic = "/things/${thing.thingName.toString()}/shadow/get";
    client.subscribe(topic, MqttQos.atLeastOnce);

    client.updates?.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final msg = c[0].payload as MqttPublishMessage;
      final payload =
          MqttPublishPayload.bytesToStringAsString(msg.payload.message);

      print('Received message:$payload from topic: ${c[0].topic}>');
      buildContext
          .read<Messages>()
          .addMsg('$payload from topic: ${c[0].topic}');
    });
  }

  void onConnected() {
    print('connected');
  }

  void onDisconnected() {
    print('disconnted');
  }

  void pong() {
    print('pong');
  }

  Future openDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Enter Temperature'),
            content: TextField(
              autofocus: true,
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(hintText: 'Temperature'),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    controller.clear();
                  },
                  child: Text("CANCEL")),
              TextButton(
                  onPressed: () {
                    send_msg("flutter",context);
                  },
                  child: Text("Send")),
            ],
          ));

  void send_msg(String uniqueId,BuildContext buildContext) async{
    if(controller.text.isEmpty){
      ScaffoldMessenger.of(buildContext).showSnackBar(SnackBar(
        content: Text("Please enter the temperature"),
      ));
      return;
    }
    ByteData rootCA = await rootBundle.load('assets/RootCA.pem');
    ByteData deviceCert = await rootBundle.load('assets/deviceCertificate.crt');
    ByteData privateKey = await rootBundle.load('assets/private.key');

    SecurityContext context = SecurityContext.defaultContext;
    context.setClientAuthoritiesBytes(rootCA.buffer.asUint8List());
    context.useCertificateChainBytes(deviceCert.buffer.asUint8List());
    context.usePrivateKeyBytes(privateKey.buffer.asUint8List());

    final MqttServerClient client =
    MqttServerClient('a1gsbdcd7xwjfd-ats.iot.us-east-1.amazonaws.com', '');

    client.securityContext = context;
    client.logging(on: true);
    client.keepAlivePeriod = 20;
    client.port = 8883;
    client.secure = true;
    client.onConnected = onConnected;
    client.onDisconnected = onDisconnected;
    client.pongCallback = pong;

    final MqttConnectMessage connMess =
    MqttConnectMessage().withClientIdentifier(uniqueId).startClean();
    client.connectionMessage = connMess;

    await client.connect();
    if (client != null &&
        client.connectionStatus!.state == MqttConnectionState.connected) {
      print('conected successfully');
    } else {
      print('not connected');
    }

    String topic = '/things/${thing.thingName.toString()}/shadow/get';
    bool sent = true;
    final builder = MqttClientPayloadBuilder();
    builder.addString('{"temperature": "${controller.text}"}');
    try{
      client.publishMessage(topic, MqttQos.atLeastOnce, builder.payload!);
    }
    catch(e){
      sent=false;
      print(e);
    }
    if(sent){
      ScaffoldMessenger.of(buildContext).showSnackBar(SnackBar(
        content: Text("Sent temperature successfuly"),
      ));
    }
    else{
      ScaffoldMessenger.of(buildContext).showSnackBar(SnackBar(
        content: Text("Error in sending the temperature"),
      ));
    }
    Navigator.of(buildContext).pop();
    controller.clear();
  }
}
