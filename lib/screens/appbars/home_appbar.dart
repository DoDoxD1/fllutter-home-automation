import 'package:flutter/material.dart';

class MyHomeAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
