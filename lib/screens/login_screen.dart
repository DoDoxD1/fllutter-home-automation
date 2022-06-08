import 'package:flutter/material.dart';
import 'package:sample/screens/login_screen_widgets/login_button.dart';
import 'package:sample/screens/login_screen_widgets/login_loginwith.dart';
import 'package:sample/screens/login_screen_widgets/login_textfield.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: Color(0xFFE5E5E5),
        backgroundColor: Colors.indigo.shade50,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Container(
              child: Center(
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.black)),
              decoration: BoxDecoration(
                  color: Color(0x405468FF), shape: BoxShape.circle),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
              child: Text(
            "Login",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontFamily: 'lato'),
          )),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 175),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/login.png'),
                MyLoginTextfield(),
                MyLoginButton(),
                MyLoginwith(),

                SizedBox(height: 100,),
                Text(
                  "SIGNUP FOR A NEW ACCOUNT",
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontFamily: 'lato',
                    fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
