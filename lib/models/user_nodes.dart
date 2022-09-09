// To parse this JSON data, do
//
//     final userNodes = userNodesFromJson(jsonString);

import 'dart:convert';

UserNodes userNodesFromJson(String str) => UserNodes.fromJson(json.decode(str));

String userNodesToJson(UserNodes data) => json.encode(data.toJson());

class UserNodes {
  UserNodes({
    required this.nodes,
    required this.total,
  });

  List<String> nodes;
  int total;

  factory UserNodes.fromJson(Map<String, dynamic> json) => UserNodes(
    nodes: List<String>.from(json["nodes"].map((x) => x)),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "nodes": List<dynamic>.from(nodes.map((x) => x)),
    "total": total,
  };
}
