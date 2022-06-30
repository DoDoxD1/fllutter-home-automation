import 'package:aws_iot_api/iot-2015-05-28.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/things_provider.dart';
import 'package:sample/screens/manageThingScreen.dart';

class DeviceScreen extends StatelessWidget {
  final String uid;

  DeviceScreen({Key? key, required this.uid}) : super(key: key);

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
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF344356),
              size: 30,
            ),
          )
        ],
      ),
      body: DeviceScreenBody(uid: uid),
    );
  }
}

class DeviceScreenBody extends StatefulWidget {
  final String uid;

  DeviceScreenBody({Key? key, required this.uid}) : super(key: key);

  @override
  State<DeviceScreenBody> createState() => _DeviceScreenBodyState(uid: uid);
}

bool loading = true;

class _DeviceScreenBodyState extends State<DeviceScreenBody> {
  final String uid;

  _DeviceScreenBodyState({Key? key, required this.uid});

  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    list_things(context, uid);
  }

  @override
  Widget build(BuildContext context) {
    final thingsList = context.watch<ThingsList>().thingsList;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Things list",
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: context.watch<ThingsList>().thingsList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(thingsList[index].thingName.toString()),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ManageThingActivity(
                                  thing: thingsList[index],
                                )));
                      },
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        list_things(context, uid);
                      },
                      child: Text("Refresh things")),
                  ElevatedButton(
                      onPressed: () {
                        openDialog(context);
                      },
                      child: Text("Add thing"))
                ],
              )
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

  AwsClientCredentials awsClientCredentials = new AwsClientCredentials(
      accessKey: "AKIA4DLDDHWDGTI74QPG",
      secretKey: "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");

  late IoT iot =
      new IoT(region: "us-east-1", credentials: awsClientCredentials);

  void list_things(BuildContext context, String uid) async {
    loading = true;
    ListThingsInThingGroupResponse listThingsResponse =
        new ListThingsInThingGroupResponse();
    listThingsResponse = await iot.listThingsInThingGroup(thingGroupName: uid);
    listThingsResponse.things?.forEach((element) {
      print("${element} \n");
      context.read<ThingsList>().addThing(ThingAttribute(thingName: element));
    });
    loading = false;
  }

  Future openDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Thing Name'),
            content: TextField(
              autofocus: true,
              controller: controller,
              decoration: InputDecoration(hintText: 'Enter name of thing'),
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
                    create_thing(context);
                  },
                  child: Text("CREATE")),
            ],
          ));

  void create_thing(BuildContext context) async {
    CreateThingResponse createThingResponse = new CreateThingResponse();
    try {
      createThingResponse =
          await iot.createThing(thingName: controller.text.toString());
      await iot.addThingToThingGroup(
          thingGroupName: uid, thingName: controller.text.toString());
    } catch (e) {
      print(e);
    }
    if (createThingResponse.thingId != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Thing created successfuly"),
      ));
      list_things(context, uid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error occured while creating thing"),
      ));
    }
    Navigator.of(context).pop();
    controller.clear();
  }
}
