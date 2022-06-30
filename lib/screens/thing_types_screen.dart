import 'package:aws_iot_api/iot-2015-05-28.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:sample/screens/manage_thing_type_screen.dart';

import '../provider/thingTypeProvider.dart';

class ThingTypesScreen extends StatefulWidget {
  @override
  State<ThingTypesScreen> createState() => _ThingTypesScreenState();
}

class _ThingTypesScreenState extends State<ThingTypesScreen> {
  bool loading = true;

  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    list_things_types(context);
  }

  @override
  Widget build(BuildContext context) {
    final thingsTypeList = context
        .watch<ThingType>()
        .thingTypeList;
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Things Type list",
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: thingsTypeList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(thingsTypeList[index]),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ManageThingTypeScreen(
                            thingType: thingsTypeList[index],
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
                          list_things_types(context);
                        },
                        child: Text("Refresh tpyes")),
                    ElevatedButton(
                        onPressed: () {
                          openDialog(context);
                        },
                        child: Text("Add type"))
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
      ),
    );
  }

  AwsClientCredentials awsClientCredentials = new AwsClientCredentials(
      accessKey: "AKIA4DLDDHWDGTI74QPG",
      secretKey: "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");

  late IoT iot =
  new IoT(region: "us-east-1", credentials: awsClientCredentials);

  void list_things_types(BuildContext context) async {
    loading = true;
    ListThingTypesResponse listThingTypesResponse =
    ListThingTypesResponse();
    listThingTypesResponse = await iot.listThingTypes();
    listThingTypesResponse.thingTypes?.forEach((element) {
      print("${element.thingTypeName} \n");
      context.read<ThingType>().addThingType(element.thingTypeName.toString());
    });
    loading = false;
  }

  void openDialog(BuildContext context) =>
      showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(
                title: Text('Thing Type'),
                content: TextField(
                  autofocus: true,
                  controller: controller,
                  decoration: InputDecoration(hintText: 'Enter name of thing type'),
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
                        create_thing_type(context);
                      },
                      child: Text("CREATE")),
                ],
              ));

  void create_thing_type(BuildContext context) async {
    CreateThingTypeResponse createThingTypeResponse = CreateThingTypeResponse();
    try {
      createThingTypeResponse =
      await iot.createThingType(thingTypeName: controller.text.toString());
    } catch (e) {
      print(e);
    }
    if (createThingTypeResponse.thingTypeId != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Thing type created successfuly"),
      ));
      // list_things_types(context, uid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error occured while creating thing type"),
      ));
    }
    Navigator.of(context).pop();
    controller.clear();
  }
}
