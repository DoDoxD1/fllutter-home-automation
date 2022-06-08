import 'package:flutter/material.dart';
import 'package:sample/screens/home_screen_widgets/add_room_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 175),
      child: AddRoomCard(),
    );
  }
}
