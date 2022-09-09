import 'dart:convert';

import 'package:sample/models/node.dart';
import 'package:sample/models/user_nodes.dart';

import '../models/user.dart';
import 'package:http/http.dart' as http;

class ApiSerivice{
  Future<User?> LoginUser(String userid, String pass) async{
    var uri = Uri.parse("https://api.rainmaker.espressif.com/v1/login");
    var body =  json.encode({
      "user_name": userid,
      "password": pass
    });
    print(body);
    var response;
    try{
      response = await http.post(uri,body: body.toString());
    }
    catch(e){
      print(e);
    }
    // User user = new User(status: response, description: description, idtoken: idtoken, accesstoken: accesstoken, refreshtoken: refreshtoken)
    // return response;
    print(response.body);
    if(response.statusCode == 200){
      return userFromJson(response.body,userid);
    }
  }
  Future<UserNodes?> getNodes(String? accessToken) async{
    var client = http.Client();
    var uri = Uri.parse("https://api.rainmaker.espressif.com/v1/user/nodes");
    var header =  {
      "Authorization": accessToken!
    };
    var response = await client.get(uri,headers: header);
    print(response.body);

    if(response.statusCode == 200){
      return userNodesFromJson(response.body);
    }
    }
    Future<Node?> getNodeDetails(String? accessToken ,String? nodeId) async{
      var client = http.Client();
      var uri = Uri.parse("https://api.rainmaker.espressif.com/v1/user/nodes/config?node_id=${nodeId!}");
      var uri2 = Uri.parse("https://api.rainmaker.espressif.com/v1/user/nodes/status?node_id=$nodeId");
      var header =  {
        "Authorization": accessToken!
      };
      var response = await client.get(uri,headers: header);

      var isConnectedResponse = await client.get(uri2,headers: header);
      Map<String, dynamic> body = json.decode(isConnectedResponse.body);

      if(response.statusCode == 200){
        return nodeFromJson(response.body,body["connectivity"]["connected"]);
      }
    }
}