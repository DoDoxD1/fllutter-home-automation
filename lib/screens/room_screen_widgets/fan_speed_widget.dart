import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class MyFanSpeedWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SleekCircularSlider(
          min: 0,
          max: 40,
          initialValue: 25,
          appearance: CircularSliderAppearance(
              customWidths: CustomSliderWidths(progressBarWidth: 6),
              size: 240,
              customColors: CustomSliderColors(
                trackColor: Colors.transparent,
                progressBarColor: Color(0xFF5468FF),
              )),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x405468FF),
                  blurRadius: 10,
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "25",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Fan Speed",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFC2C9D1),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          top: 200,
          // right: 10,
          // left: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 31,
                width: 31,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 5),
                        color: Color(0x405468FF),
                        blurRadius: 5,
                      ),
                    ]),
                child: Icon(
                  Icons.minimize,
                  size: 20,
                ),
              ),
              Spacer(),
              Container(
                height: 31,
                width: 31,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 5),
                        color: Color(0x405468FF),
                        blurRadius: 5,
                      ),
                    ]),
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
