import 'package:flutter/material.dart';

class AddRoomCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 8,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      "Add Room",
                      style: TextStyle(
                          fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFC2C9D1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      "Add Group",
                      style: TextStyle(
                          fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFC2C9D1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      "Add Floor",
                      style: TextStyle(
                          fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 100,)
                ]),
          ),
        ),
      ],
    );
  }
}
