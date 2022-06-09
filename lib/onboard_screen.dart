import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/board_provider.dart';

class MyOnBoardScree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < -50) {
            if(context.read<BoardProvider>().board=='assets/board1.png'){
              print("111111");
              context.read<BoardProvider>().setBoard('assets/board2.png');}
            else if(context.read<BoardProvider>().board=='assets/board2.png'){
              print("222222");
              context.read<BoardProvider>().setBoard('assets/board3.png');}
            else
              return;
            print("hello");
          }
        },
    child: Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(context.read<BoardProvider>().board),
            fit: BoxFit.fill,
          ),
        ),
      ),
    Positioned.fill(
    top: MediaQuery.of(context).size.height/1.2,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
    primary: Color(0xFFd4d9ff),
    elevation: 0,
    padding: EdgeInsets.all(12),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    ),
    ),
    child: Padding(
    padding: const EdgeInsets.only(left: 35,right: 35,top: 5,bottom: 5),
    child: Text(
    "LOGIN",
    style: TextStyle(fontSize: 15, fontFamily: 'lato',fontWeight: FontWeight.w700,color: Colors.black),
    ),
    )),
    ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
    primary: Color(0xFF5468FF),
    elevation: 0,
    padding: EdgeInsets.all(12),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    ),
    ),
    child: Padding(
    padding: const EdgeInsets.only(left: 30,right: 30,top: 5,bottom: 5),
    child: Text(
    "SIGN UP",
    style: TextStyle(fontSize: 15, fontFamily: 'lato',fontWeight: FontWeight.w700),
    ),
    )),
    ],
    ),
    )
    ]
    ,
    )
    ,
    );
  }
}
