import 'package:aws_iot_api/iot-2015-05-28.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/nodes_provider.dart';
import 'package:sample/provider/things_provider.dart';
import 'package:sample/provider/used_nodes_provider.dart';
import 'package:sample/screens/manageThingScreen.dart';
import 'package:sample/services/api_services.dart';

import '../models/node.dart';
import '../models/user_nodes.dart';

class DeviceScreen extends StatelessWidget {
  final String uid;
  final String?  accessToken;

  DeviceScreen({Key? key, required this.uid, required this.accessToken}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: ElevatedButton(
              onPressed: ()=>{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Add device will be available soon!"),
              ))
              },
              child: Icon(
                Icons.add,
                color: Color(0xFF344356),
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: DeviceScreenBody(uid: uid,accessToken: accessToken,),
    );
  }
}

class DeviceScreenBody extends StatefulWidget {
  final String uid;
  final String? accessToken;

  DeviceScreenBody({Key? key, required this.uid, required this.accessToken}) : super(key: key);

  @override
  State<DeviceScreenBody> createState() => _DeviceScreenBodyState(uid: uid,accessToken: accessToken);
}

bool loading = true;

class _DeviceScreenBodyState extends State<DeviceScreenBody> {
  final String uid;
  final String? accessToken;

  _DeviceScreenBodyState({Key? key, required this.uid, required this.accessToken});

  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    list_things(context, uid, accessToken);
  }

  @override
  Widget build(BuildContext context) {
    // final thingsList = context.watch<ThingsList>().thingsList;
    final userNode1 = context.watch<UserNodesProvider>().node;
    final nodeDevices = context.watch<UserNodesProvider>().node.devices;


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All devices",
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: context.watch<UserNodesProvider>().node.devices.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(nodeDevices[index].name.toString()),
                      trailing: userNode1.isConnected? Text("Connected"):Text("Not Connected"),
                      onTap: () {
                        // bool ison=false;
                        // if(ison){
                        //   ison = ture;
                        //   msg = "Device will be turned on";
                        // }
                        // else{
                        //   ison = false;
                        //   msg = "Device will be turned "
                        // }
                        if(userNode1.isConnected==false)
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Device not connected!"),
                        ));
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => ManageThingActivity(
                        //           thing: userNodes.nodes[index].toString(),
                        //         )));
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          if (loading)
            SpinKitWanderingCubes(
              size: 70,
              color: Colors.lightBlue,
            ),
        ],
      ),
    );
  }

  void list_things(BuildContext context, String uid, String? accessToken) async {
    UserNodes? userNodes = await ApiSerivice().getNodes(accessToken);

    loading = false;

    print(userNodes?.nodes[0]);

    Node? node = await ApiSerivice().getNodeDetails(accessToken, userNodes?.nodes[0]);

    print(node?.devices[0].name);

    context.read<UserNodesProvider>().updateNodesList(userNodes!);
    context.read<UserNodesProvider>().updateNodeDetails(node!);
  }
}
