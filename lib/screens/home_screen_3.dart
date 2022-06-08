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
    return Scaffold(
      // backgroundColor: Color(0xFFE5E5E5),
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Center(
              child: Icon(
            Icons.menu,
            color: Color(0xFF344356),
            size: 30,
          )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Icon(
              Icons.search,
              color: Color(0xFF344356),
              size: 35,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          MyTopRowRounded(),
          SizedBox(height: 5,),
          ThreeRoomsCard(),
        ],
      ),
      bottomNavigationBar: MyBottomNavigation(),
      floatingActionButton: MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
