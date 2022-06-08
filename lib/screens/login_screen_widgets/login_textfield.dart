import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MyLoginTextfield extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: InternationalPhoneNumberInput(
          onInputChanged: (value) {},
          inputDecoration: InputDecoration(
            hintStyle: TextStyle(color: Color(0xFFC2C9D1)),
            hintText: "Phone Number",
            border: InputBorder.none
          ),
          maxLength: 10,
          selectorTextStyle: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              fontFamily: 'lato'),
          textStyle: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              fontFamily: 'lato'),
          spaceBetweenSelectorAndTextField: 0,
        ),
      ),
    );
  }
}
