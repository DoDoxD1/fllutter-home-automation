import 'package:flutter/material.dart';

class ThreeRoomsCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 180,
                width: 337,
                child: Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/living1.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: 170,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              Container(
                height: 180,
                width: 337,
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Living Room",style: TextStyle(color: Color(
                            0xFFD2D2D2),fontSize: 16,fontWeight: FontWeight.w700),),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(Icons.circle,color: Color(0xFF00AA45),size: 10,),
                            ),
                            Text("4 Devices", style: TextStyle(color: Color(0xFFC2C9D1),fontWeight: FontWeight.w700,fontSize: 10),),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xFF00AA45),
                      ),
                      child: Icon(Icons.power_settings_new_outlined,color: Colors.white,size: 18,),
                    )
                  ],
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 180,
                width: 337,
                child: Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/living2.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: 170,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              Container(
                height: 180,
                width: 337,
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Living Room",style: TextStyle(color: Color(
                            0xFFD2D2D2),fontSize: 16,fontWeight: FontWeight.w700),),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(Icons.circle,color: Color(0xFF00AA45),size: 10,),
                            ),
                            Text("4 Devices", style: TextStyle(color: Color(0xFFC2C9D1),fontWeight: FontWeight.w700,fontSize: 10),),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xFF00AA45),
                      ),
                      child: Icon(Icons.power_settings_new_outlined,color: Colors.white,size: 18,),
                    )
                  ],
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 180,
                width: 337,
                child: Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/living3.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: 170,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              Container(
                height: 180,
                width: 337,
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Kitchen",style: TextStyle(color: Color(
                            0xFFD2D2D2),fontSize: 16,fontWeight: FontWeight.w700),),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(Icons.circle,color: Color(0xFF00AA45),size: 10,),
                            ),
                            Text("4 Devices", style: TextStyle(color: Color(0xFFC2C9D1),fontWeight: FontWeight.w700,fontSize: 10),),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xFF00AA45),
                      ),
                      child: Icon(Icons.power_settings_new_outlined,color: Colors.white,size: 18,),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
