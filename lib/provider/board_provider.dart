import 'package:flutter/material.dart';

class BoardProvider with ChangeNotifier {
  String _board = 'assets/board1.png';

  get board => _board;

  void setBoard(var board) {
    _board = board;
    notifyListeners();
  }
}
