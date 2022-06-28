import 'package:flutter/material.dart';

class ThingName with ChangeNotifier {
  String _thingName="";

  String get thingName => _thingName;

  void addThing(String thing) {
    _thingName = thing;
    notifyListeners();
  }
}
