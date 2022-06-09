import 'package:flutter/material.dart';

class MyIconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 150,
      right: -20,
      left: -20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 80,
            width: 80,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                side: BorderSide(color: Color(0xFF5468FF), width: 3),
              ),
              child: Icon(
                Icons.microwave_rounded,
                color: Color(0xFF5468FF),
                size: 50,
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                side: BorderSide(color: Color(0xFFC2C9D1), width: 3),
              ),
              child: Icon(
                Icons.lightbulb_outline_rounded,
                color: Color(0xFFC2C9D1),
                size: 50,
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                side: BorderSide(color: Color(0xFFC2C9D1), width: 3),
              ),
              child: Icon(
                Icons.tv_rounded,
                color: Color(0xFFC2C9D1),
                size: 50,
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                side: BorderSide(color: Color(0xFFC2C9D1), width: 3),
              ),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Color(0xFFC2C9D1),
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
