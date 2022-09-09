// To parse this JSON data, do
//
//     final node = nodeFromJson(jsonString);

import 'dart:convert';
import 'dart:ffi';

Node nodeFromJson(String str, bool isConnected) => Node.fromJson(json.decode(str),isConnected);

String nodeToJson(Node data) => json.encode(data.toJson());

class Node {
  Node({
    required this.devices,
    required this.nodeId,
    required this.services,
    required this.isConnected,
  });

  List<Device> devices;
  bool isConnected;
  String nodeId;
  List<Service> services;

  factory Node.fromJson(Map<String, dynamic> json, bool isConnected) => Node(
    devices: List<Device>.from(json["devices"].map((x) => Device.fromJson(x))),
    nodeId: json["node_id"],
    services: List<Service>.from(json["services"].map((x) => Service.fromJson(x))),
    isConnected: isConnected,
  );

  Map<String, dynamic> toJson() => {
    "devices": List<dynamic>.from(devices.map((x) => x.toJson())),
    "node_id": nodeId,
    "services": List<dynamic>.from(services.map((x) => x.toJson())),
  };
}

class Device {
  Device({
    required this.name,
    required this.params,
    required this.primary,
    required this.type,
  });

  String name;
  List<Param> params;
  String primary;
  String type;

  factory Device.fromJson(Map<String, dynamic> json) => Device(
    name: json["name"],
    params: List<Param>.from(json["params"].map((x) => Param.fromJson(x))),
    primary: json["primary"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "params": List<dynamic>.from(params.map((x) => x.toJson())),
    "primary": primary,
    "type": type,
  };
}

class Param {
  Param({
    required this.dataType,
    required this.name,
    required this.properties,
    required this.type,
  });

  String dataType;
  String name;
  List<String> properties;
  String type;

  factory Param.fromJson(Map<String, dynamic> json) => Param(
    dataType: json["data_type"],
    name: json["name"],
    properties: List<String>.from(json["properties"].map((x) => x)),
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "data_type": dataType,
    "name": name,
    "properties": List<dynamic>.from(properties.map((x) => x)),
    "type": type,
  };
}

class Service {
  Service({
    required this.name,
    required this.params,
    required this.type,
  });

  String name;
  List<Param> params;
  String type;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
    name: json["name"],
    params: List<Param>.from(json["params"].map((x) => Param.fromJson(x))),
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "params": List<dynamic>.from(params.map((x) => x.toJson())),
    "type": type,
  };
}
