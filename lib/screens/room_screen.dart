import 'package:flutter/material.dart';
import 'package:sample/bottom_navigation.dart';
import 'package:sample/screens/floatingactionbutton.dart';
import 'package:sample/screens/room_screen_widgets/fan_speed_widget.dart';
import 'package:sample/screens/room_screen_widgets/top_widget.dart';

class MyRoomPage extends StatelessWidget {
  const MyRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
                child: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF344356),
              size: 30,
            )),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                  child: Icon(
                Icons.add,
                color: Color(0xFF344356),
                size: 36,
              )),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          MyRoomTopWidget(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xFF00AA45),
                  ),
                  child: Icon(
                    Icons.power_settings_new_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Icon(
                    Icons.alarm,
                    color: Color(0xFFC2C9D1),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          MyFanSpeedWidget(),
        ],
      ),
      bottomNavigationBar: MyBottomNavigation(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: MyFloatingActionButton(),
    );
  }
}
