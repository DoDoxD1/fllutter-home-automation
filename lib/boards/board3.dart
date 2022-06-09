import 'package:flutter/material.dart';

class MyBoard3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset('assets/board3.png'),
    );
  }
}
