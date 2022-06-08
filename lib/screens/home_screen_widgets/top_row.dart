import 'package:flutter/material.dart';

class MyTopRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 110,
          width: 104,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.thermostat_outlined,
                  color: Color(0xFF5468FF),
                  size: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1,bottom: 5),
                  child: Text(
                    "Temprature",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  "26 C",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFC2C9D1)),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 110,
          width: 104,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.water_drop_outlined,
                  color: Color(0xFF5468FF),
                  size: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1,bottom: 5),
                  child: Text(
                    "Humidity",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  "72%",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFC2C9D1)),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 110,
          width: 104,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud_outlined,
                  color: Color(0xFF5468FF),
                  size: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1,bottom: 5),
                  child: Text(
                    "Co2",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  "602 PPM",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFC2C9D1)),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
