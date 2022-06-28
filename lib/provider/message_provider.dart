import 'package:flutter/material.dart';

class Messages with ChangeNotifier{
  String _msg="";
  get msg => _msg;
  void addMsg(String msg) {
    _msg = _msg+msg;
    notifyListeners();
  }
  void empytMsg(){
    _msg = "";
    notifyListeners();
  }
}