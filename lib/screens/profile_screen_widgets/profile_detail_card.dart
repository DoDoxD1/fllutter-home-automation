import 'package:flutter/material.dart';

class ProfileDetailsCard extends StatelessWidget {
  const ProfileDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206,
      width: 315,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Color(0x10000000),
              blurRadius: 4,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Email : ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Text(
                  "anastesiagrey@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Mobile No : ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Text(
                  "9827392943",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Country : ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Text(
                  "India",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "State : ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Text(
                  "Gujarat",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "City : ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                Text(
                  "Ahmedabad",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
