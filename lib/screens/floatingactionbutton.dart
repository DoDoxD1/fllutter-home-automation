import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/navigation_provider.dart';
import 'package:sample/screens/home_screen.dart';

class MyFloatingActionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        context.read<Navigation>().setIndex(5);
      },
      child: Icon(Icons.add_sharp,color: Color(0xFFD1D7FF),size: 40,),
      backgroundColor: Color(0xFFF2F7FF),
      shape: StadiumBorder(side: BorderSide(color: Color(0xFFA3ADFF),width: 3)),
    );
  }
}
