import 'package:flutter/material.dart';
import 'package:sample/screens/login_screen.dart';
import 'package:sample/screens/login_screen_widgets/login_button.dart';
import 'package:sample/screens/login_screen_widgets/login_loginwith.dart';
import 'package:sample/screens/login_screen_widgets/login_textfield.dart';
import 'package:sample/screens/signup_screen_widgets/MySignUpButton.dart';
import 'package:sample/screens/signup_screen_widgets/signup_textfield_name.dart';
import 'package:sample/screens/signup_screen_widgets/signup_prefrence.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: Color(0xFFE5E5E5),
        backgroundColor: Colors.indigo.shade50,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                child: Center(
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.black)),
                decoration: BoxDecoration(
                    color: Color(0x405468FF), shape: BoxShape.circle),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Center(
                child: Text(
              "Signup",
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontFamily: 'lato'),
            )),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 175),
          child: Center(
            child: Column(
              children: [
                // MyLoginTextfield(),
                MySignupNameTextfield(controller: controller,),
                // MySignupPreference(),
                MySignUpButton(controller: controller,),
                MyLoginwith(),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "I ALREADY HAVE AN ACCOUNT",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontFamily: 'lato',
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
