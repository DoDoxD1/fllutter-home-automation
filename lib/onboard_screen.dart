import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/board_provider.dart';
import 'package:sample/screens/login_screen.dart';
import 'package:sample/screens/signup_screen.dart';

class MyOnBoardScree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            if (context.read<BoardProvider>().board == 'assets/board1.png') {
              context.read<BoardProvider>().setBoard('assets/board2.png');
            } else if (context.read<BoardProvider>().board ==
                'assets/board2.png') {
              context.read<BoardProvider>().setBoard('assets/board3.png');
            } else
              return;
          }
          if (details.delta.dy < 0) {
            if (context.read<BoardProvider>().board == 'assets/board3.png') {
              context.read<BoardProvider>().setBoard('assets/board2.png');
            } else if (context.read<BoardProvider>().board ==
                'assets/board2.png') {
              context.read<BoardProvider>().setBoard('assets/board1.png');
            } else
              return;
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(context.watch<BoardProvider>().board),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned.fill(
              top: MediaQuery.of(context).size.height / 1.2,
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
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 35, right: 35, top: 5, bottom: 5),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'lato',
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
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
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 5, bottom: 5),
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'lato',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
