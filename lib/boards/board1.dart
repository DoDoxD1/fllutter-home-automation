import 'package:flutter/material.dart';

class MyBoard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset('assets/board1.png'),
    );
  }
}
