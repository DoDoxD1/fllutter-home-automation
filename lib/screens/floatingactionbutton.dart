import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add_sharp,color: Color(0xFFD1D7FF),size: 40,),
      backgroundColor: Color(0xFFF2F7FF),
      shape: StadiumBorder(side: BorderSide(color: Color(0xFFA3ADFF),width: 3)),
    );
  }
}
