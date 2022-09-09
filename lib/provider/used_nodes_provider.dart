import 'package:flutter/material.dart';
import 'package:sample/models/node.dart';
import 'package:sample/models/user_nodes.dart';

class UserNodesProvider with ChangeNotifier{
  UserNodes _userNodes = UserNodes(nodes: <String>[], total: 0);
  Node _node = Node(devices: <Device>[], nodeId: "", services: <Service>[], isConnected: false);

  Node get node => _node;
  UserNodes get userNodes => _userNodes;

  void updateNodesList(UserNodes userNodes){
    _userNodes = userNodes;
    notifyListeners();
  }

  void updateNodeDetails(Node node){
    _node = node;
    notifyListeners();
  }
}