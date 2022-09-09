// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str, String userid) => User.fromJson(json.decode(str),userid);

String welcomeToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.userid,
    required this.status,
    required this.description,
    required this.idtoken,
    required this.accesstoken,
    required this.refreshtoken,
  });

  String userid;
  String status;
  String description;
  String idtoken;
  String accesstoken;
  String refreshtoken;

  factory User.fromJson(Map<String, dynamic> json,String userid) => User(
    userid: userid,
    status: json["status"],
    description: json["description"],
    idtoken: json["idtoken"],
    accesstoken: json["accesstoken"],
    refreshtoken: json["refreshtoken"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "description": description,
    "idtoken": idtoken,
    "accesstoken": accesstoken,
    "refreshtoken": refreshtoken,
  };
}
