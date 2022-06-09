import 'package:flutter/material.dart';
import 'package:sample/bottom_navigation.dart';
import 'package:sample/screens/floatingactionbutton.dart';

class AddFloorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDBDBDB),
      body: Center(
        child: Container(
          height: 362,
          width: 341,
          decoration: BoxDecoration(
              color: Color(0xFFDBDBDB),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33000000),
                  blurRadius: 50,
                ),
              ]),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Add Floors",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              Divider(
                indent: 100,
                endIndent: 100,
                thickness: 1.2,
                color: Colors.white,
              ),
              SizedBox(height: 70,),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: ("Add Floor"),
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF5468FF),
                    elevation: 5,
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40,right: 40,top: 5,bottom: 5),
                    child: Text(
                      "Add",
                      style: TextStyle(fontSize: 15, fontFamily: 'lato',fontWeight: FontWeight.w700),
                    ),
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavigation(),
      floatingActionButton: MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
