import 'package:flutter/material.dart';

class ThingType with ChangeNotifier{
  String _thingType = "one";
  List<String> _thingTypeList=[];

  String get thingType => _thingType;
  List<String> get thingTypeList => _thingTypeList;

  void addThingType(String thingType) {
    bool contains = false;
    for(String str in thingTypeList){
      if(str == thingType){
        contains = true;
      }
    }
    if(!contains){
      thingTypeList.add(thingType);
      notifyListeners();
    }
  }
  void removeThingType(String thingType){
    thingTypeList.remove(thingType);
    notifyListeners();
  }
  void setThingType(String thingType){
    _thingType = thingType;
    notifyListeners();
  }
}