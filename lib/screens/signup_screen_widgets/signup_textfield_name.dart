import 'package:flutter/material.dart';

class MySignupNameTextfield extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextField(
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              fontFamily: 'lato'),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Name",
              hintStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: Color(0xFFC2C9D1)),
            ),
          ),
        ),
      ),
    );
  }
}
