import 'package:flutter/material.dart';
import 'package:sample/screens/login_screen_widgets/login_button.dart';
import 'package:sample/screens/login_screen_widgets/login_loginwith.dart';
import 'package:sample/screens/login_screen_widgets/login_textfield.dart';
import 'package:sample/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

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
                // MyLoginTextfield(),
                Padding(
                  padding: const EdgeInsets.only(left: 32,right: 32,top: 8),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(hintText: 'Enter your name'),
                  ),
                ),
                MyLoginButton(
                  controller: controller,
                ),
                MyLoginwith(),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Text(
                    "SIGNUP FOR A NEW ACCOUNT",
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
