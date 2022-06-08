import 'package:flutter/material.dart';

class MySignupPreference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFC2C9D1),
            padding: EdgeInsets.all(18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text("Select your Prefrence",style: TextStyle(fontSize: 21,fontFamily: 'lato',color: Color(0x80000000)),),
              ),
              Container(
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: Colors.grey.shade600,
                ),
              )
            ],
          )),
    );
  }
}
