import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/onboard_screen.dart';
import 'package:sample/provider/board_provider.dart';
import 'package:sample/provider/message_provider.dart';
import 'package:sample/provider/navigation_provider.dart';
import 'package:flutter/services.dart';
import 'package:sample/provider/newThing_provider.dart';
import 'package:sample/provider/thingTypeProvider.dart';
import 'package:sample/provider/things_provider.dart';
import 'package:sample/screens/devices_screen.dart';
import 'package:sample/screens/login_screen.dart';
import 'package:sample/screens/thing_types_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Navigation()),
      ChangeNotifierProvider(create: (_) => BoardProvider()),
      ChangeNotifierProvider(create: (_) => ThingsList()),
      ChangeNotifierProvider(create: (_) => ThingName()),
      ChangeNotifierProvider(create: (_) => Messages()),
      ChangeNotifierProvider(create: (_) => ThingType()),
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
      home: LoginScreen(),
    );
  }
}
