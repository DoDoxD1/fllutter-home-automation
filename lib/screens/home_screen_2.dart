import 'package:flutter/material.dart';
import 'package:sample/bottom_navigation.dart';
import 'package:sample/screens/floatingactionbutton.dart';
import 'package:sample/screens/home_screen_widgets/add_room_card.dart';
import 'package:sample/screens/home_screen_widgets/three_room_cards.dart';
import 'package:sample/screens/home_screen_widgets/top_row.dart';

class HomeScreenSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTopRow(),
        ThreeRoomsCard(),
      ],
    );
  }
}
