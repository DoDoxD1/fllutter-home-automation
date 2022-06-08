import 'package:flutter/material.dart';

class MyTopRowRounded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 80,
          width: 80,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              side: BorderSide(color: Color(0xFF5468FF), width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Group\n1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF5468FF)),
                ),
                SizedBox(height: 2,),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xFF00AA45),
                  ),
                  child: Icon(
                    Icons.power_settings_new_outlined,
                    color: Colors.white,
                    size: 12,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              side: BorderSide(color: Color(0xFFC2C9D1), width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Group\n2",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFC2C9D1)),
                ),
                SizedBox(height: 2,),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xFF00AA45),
                  ),
                  child: Icon(
                    Icons.power_settings_new_outlined,
                    color: Colors.white,
                    size: 12,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              side: BorderSide(color: Color(0xFFC2C9D1), width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Group\n3",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFC2C9D1)),
                ),
                SizedBox(height: 2,),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xFF00AA45),
                  ),
                  child: Icon(
                    Icons.power_settings_new_outlined,
                    color: Colors.white,
                    size: 12,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              side: BorderSide(color: Color(0xFFC2C9D1), width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Group\n4",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFC2C9D1)),
                ),
                SizedBox(height: 2,),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xFF00AA45),
                  ),
                  child: Icon(
                    Icons.power_settings_new_outlined,
                    color: Colors.white,
                    size: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
