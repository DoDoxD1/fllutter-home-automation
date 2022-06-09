import 'package:flutter/material.dart';
import 'package:sample/screens/home_page.dart';

class MyLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
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
                child: Text("GET OTP",style: TextStyle(fontSize: 15,fontFamily: 'lato'),),
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
}
