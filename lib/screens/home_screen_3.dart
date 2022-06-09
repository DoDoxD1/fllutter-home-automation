import 'package:flutter/material.dart';
import 'package:sample/screens/home_screen_widgets/top_row.dart';
import 'package:sample/screens/home_screen_widgets/top_row_rounded.dart';

import '../bottom_navigation.dart';
import 'floatingactionbutton.dart';
import 'home_screen_widgets/three_room_cards.dart';

class HomeScreenThird extends StatelessWidget {
  const HomeScreenThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTopRowRounded(),
        SizedBox(height: 5,),
        ThreeRoomsCard(),
      ],
    );
  }
}
