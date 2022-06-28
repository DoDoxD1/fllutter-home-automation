import 'package:aws_iot_api/iot-2015-05-28.dart';
import 'package:flutter/material.dart';

class ThingsList with ChangeNotifier {
  List<ThingAttribute> _thingsList=[];

  List<ThingAttribute> get thingsList => _thingsList;

  void addThing(ThingAttribute thing) {
    bool contains = false;
    for(ThingAttribute str in thingsList){
      if(str.thingName == thing.thingName){
        contains = true;
      }
    }
    if(!contains){
      thingsList.add(thing);
      notifyListeners();
    }
  }
  void removeThing(ThingAttribute thing){
    thingsList.remove(thing);
    notifyListeners();
  }
}
