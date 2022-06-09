import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/screens/login_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: 'lato',
                    color: Color(0xFF344356)),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.lock_outline_rounded,
                  color: Color(0x60000000),
                ),
                title: Text(
                  "Change Password",
                  style: TextStyle(color: Color(0xFF344356)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFC2C9D1),
                  size: 20,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.list_alt,
                  color: Color(0x60000000),
                ),
                title: Text(
                  "My Device",
                  style: TextStyle(color: Color(0xFF344356)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFC2C9D1),
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 5,
          color: Color(0xFFC2C9D1),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Prefrences and Usage",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                fontFamily: 'lato',
                color: Color(0xFF344356)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Flexible(
                  flex: 8,
                  child: ListTile(
                    leading: Icon(Icons.notifications_active_outlined),
                    title: Text(
                      "Enable Notifications",
                      style: TextStyle(color: Color(0xFF344356)),
                    ),
                  )),
              new Flexible(
                  flex: 2,
                  child: Transform.scale(
                    transformHitTests: false,
                    scale: .8,
                    child: CupertinoSwitch(
                      onChanged: (bool value) {},
                      value: true,
                      activeColor: Color(0xFF00D9CE),
                    ),
                  ))
            ],
          ),
        ),
        Divider(
          thickness: 5,
          color: Color(0xFFC2C9D1),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "More",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontFamily: 'lato',
                    color: Color(0xFF344356)),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: Color(0x60000000),
                ),
                title: Text(
                  "Chat with us",
                  style: TextStyle(color: Color(0xFF344356)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFC2C9D1),
                  size: 20,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.phone_in_talk_outlined,
                  color: Color(0x60000000),
                ),
                title: Text(
                  "Contact us",
                  style: TextStyle(color: Color(0xFF344356)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFC2C9D1),
                  size: 20,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.star_outline_rounded,
                  color: Color(0x60000000),
                ),
                title: Text(
                  "Rate us",
                  style: TextStyle(color: Color(0xFF344356)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFC2C9D1),
                  size: 20,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0x60000000),
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(color: Color(0xFF344356)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFC2C9D1),
                  size: 20,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: Icon(
                  Icons.system_security_update_good_outlined,
                  color: Color(0x60000000),
                ),
                title: Text(
                  "Terms and Conditions",
                  style: TextStyle(color: Color(0xFF344356)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFC2C9D1),
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 5,
          color: Color(0xFFC2C9D1),
        ),
        InkWell(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(
                Icons.logout_rounded,
                color: Color(0xFFF03738),
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Color(0xFFF03738),fontWeight: FontWeight.w500,fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
