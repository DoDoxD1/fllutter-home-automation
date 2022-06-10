import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/boards/board1.dart';
import 'package:sample/boards/board2.dart';
import 'package:sample/boards/board3.dart';
import 'package:sample/onboard_screen.dart';
import 'package:sample/provider/board_provider.dart';
import 'package:sample/provider/navigation_provider.dart';
import 'package:flutter/services.dart';
import 'package:sample/screens/add_device_screen.dart';
import 'package:sample/screens/login_screen.dart';
import 'package:sample/screens/room_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Navigation()),
      ChangeNotifierProvider(create: (_) => BoardProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Readymotive",
      home: MyOnBoardScree(),
    );
  }
}
