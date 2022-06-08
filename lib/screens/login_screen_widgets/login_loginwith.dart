import 'package:flutter/material.dart';

class MyLoginwith extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Or signup with",
        style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontFamily: 'lato'),
      ),
      SizedBox(
        height: 20,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Image.asset('assets/google.png')),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Image.asset('assets/facebook.png')),
        ),
      ]),
    ],);
  }
}
