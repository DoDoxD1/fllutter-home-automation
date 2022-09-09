import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/models/user.dart';
import 'package:sample/screens/home_page.dart';
import 'package:sample/services/api_services.dart';

import '../../provider/navigation_provider.dart';
import '../devices_screen.dart';

class MyLoginButton extends StatelessWidget {
  TextEditingController controller;
  TextEditingController controller_pass;
  MyLoginButton({Key? key, required this.controller, required this.controller_pass}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ElevatedButton(
          onPressed: () {
            context.read<Navigation>().setIndex(0);
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            if(controller.text.toString().isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Enter your email id"),
              ));
              return;
            }
            else if(controller_pass.text.toString().isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Enter your password"),
              ));
              return;
            }
            else{
              loginUser(context,controller.text.toString(),controller_pass.text.toString());
            }

          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF5468FF),
            padding: EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: Text("LOGIN",style: TextStyle(fontSize: 15,fontFamily: 'lato'),),
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF3D56F0),
                ),
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.white,
                ),
              )
            ],
          )),
    );
  }

  void loginUser(BuildContext context, String username, String pass) async{
    String? res = "";
    User? user = await ApiSerivice().LoginUser(username,pass);
    res = user?.status.toString();
    if(res=="success"){
      Navigator.pushReplacement(context, PageRouteBuilder(
        transitionDuration: Duration(seconds: 1),
        transitionsBuilder: (context, animation, animationTime,
            child) {
          animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
          return ScaleTransition(
            alignment: Alignment.center,
            scale: animation,
            child: child,
          );
        },
        pageBuilder: (context, animation, animationTime) {
          return DeviceScreen(uid: controller.text.toString(),accessToken: user?.accesstoken,);
        },
      ));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error logging in!"),
      ));
    }
  }
}
