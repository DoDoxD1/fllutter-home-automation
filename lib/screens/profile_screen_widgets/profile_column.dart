import 'package:flutter/material.dart';
import 'package:sample/screens/profile_screen_widgets/profile_detail_card.dart';

class MyProfileColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.edit_outlined),
            )
          ],
        ),
        Container(
          height: 138,
          width: 138,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              border: Border.all(color: Colors.white, width: 8),
              boxShadow: [
                BoxShadow(
                  color: Color(0x405468FF),
                  blurRadius: 5,
                ),
              ]),
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(100))),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Image.asset(
              "assets/living1.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 30,),
        Text(
            "Anastesia Grey",
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w500,
            color: Color(0xFF344356)
          ),
        ),
        SizedBox(height: 50,),
        ProfileDetailsCard(),
      ],
    );
  }
}
