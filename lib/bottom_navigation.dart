import 'package:flutter/material.dart';
import 'package:sample/provider/navigation_provider.dart';

class MyBottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_rounded,
                              size: 30,
                              color: Color(0xFF5468FF)),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Color(0xFF5468FF),
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ],
                      )),
                  MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.dashboard,
                              size: 30,
                              color: Color(0xFF344356)),
                          Text(
                            "Group",
                            style: TextStyle(
                                color: Color(0xFF344356),
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
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_rounded,
                            size: 30,
                            color: Color(0xFF344356)),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: Color(0xFF344356),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        )
                      ],
                    )),
                MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings_outlined,
                            size: 30,
                            color: Color(0xFF344356)),
                        Text(
                          "Settings",
                          style: TextStyle(
                              color: Color(0xFF344356),
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
    );
  }
}
