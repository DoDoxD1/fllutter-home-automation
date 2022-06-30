import 'package:aws_iot_api/iot-2015-05-28.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/thingTypeProvider.dart';

class ManageThingTypeScreen extends StatelessWidget {
  final String thingType;

  ManageThingTypeScreen({Key? key, required this.thingType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final thingTypes = context.watch<ThingType>().thingTypeList;
    return Scaffold(
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
                delete_thing_type(context);
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Thing Type: ${thingType}",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        deprecate_thing_type(context);
                      },
                      child: Text("Deprecate thing type"))
                ],
              ),
            )
          ],
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

  void delete_thing_type(BuildContext context) async {
    bool deleted = true;
    try {
      await iot.deleteThingType(thingTypeName: thingType);
      context.read<ThingType>().removeThingType(thingType);
      Navigator.pop(context);
    } catch (e) {
      deleted = false;
      print(e);
    }
    if (deleted)
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Thing type deleted successfuly"),
      ));
    else
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error deleting thing type"),
      ));
  }

  void deprecate_thing_type(BuildContext context) async {
    bool deprecated = true;
    try {
      await iot.deprecateThingType(thingTypeName: thingType);
    } catch (e) {
      deprecated = false;
      print(e);
    }
    if (deprecated)
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Thing type deprecated successfuly now you can delete this thing type after 10 minutes"),
      ));
    else
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error deprecated thing type"),
      ));
  }
}
