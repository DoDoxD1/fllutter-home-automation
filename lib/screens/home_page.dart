import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/screens/home_screen_3.dart';
import 'package:sample/screens/profile_screen_widgets/profile_column.dart';
import 'package:sample/screens/settings_screen.dart';

import '../provider/navigation_provider.dart';
import 'floatingactionbutton.dart';
import 'home_screen.dart';
import 'home_screen_2.dart';

class MyHomePage extends StatelessWidget {

  final screens = [
    HomeScreenSecond(),
    HomeScreenThird(),
    MyProfileColumn(),
    SettingsScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Color(0xFF344356),
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF344356),
              size: 30,
            ),
          )
        ],
      ),
      body: IndexedStack(
        index: context.watch<Navigation>().index,
        children: screens,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          context.read<Navigation>().setIndex(0);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded,
                                size: 30,
                                color: context.watch<Navigation>().index == 0
                                    ? Color(0xFF5468FF)
                                    : Color(0xFF344356)),
                            Text(
                              "Home",
                              style: TextStyle(
                                  color: context.watch<Navigation>().index == 0
                                      ? Color(0xFF5468FF)
                                      : Color(0xFF344356),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )
                          ],
                        )),
                    MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          context.read<Navigation>().setIndex(1);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.dashboard,
                                size: 30,
                                color: context.watch<Navigation>().index == 1
                                    ? Color(0xFF5468FF)
                                    : Color(0xFF344356)),
                            Text(
                              "Group",
                              style: TextStyle(
                                  color: context.watch<Navigation>().index == 1
                                      ? Color(0xFF5468FF)
                                      : Color(0xFF344356),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        context.read<Navigation>().setIndex(2);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_rounded,
                              size: 30,
                              color: context.watch<Navigation>().index == 2
                                  ? Color(0xFF5468FF)
                                  : Color(0xFF344356)),
                          Text(
                            "Profile",
                            style: TextStyle(
                                color: context.watch<Navigation>().index == 2
                                    ? Color(0xFF5468FF)
                                    : Color(0xFF344356),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ],
                      )),
                  MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        context.read<Navigation>().setIndex(3);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings_outlined,
                              size: 30,
                              color: context.watch<Navigation>().index == 3
                                  ? Color(0xFF5468FF)
                                  : Color(0xFF344356)),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: context.watch<Navigation>().index == 3
                                    ? Color(0xFF5468FF)
                                    : Color(0xFF344356),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
