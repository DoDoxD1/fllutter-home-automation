import 'package:flutter/material.dart';

import 'icon_row.dart';

class MyRoomTopWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 230,
              width: 370,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/living3.jpg',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            MyIconRow(),
          ],
        ),
      ],
    );
  }
}
