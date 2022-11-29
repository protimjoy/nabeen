import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';

import 'login_page.dart';
import 'nav_bar/bottom_nav_bar.dart';
import 'user_profile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(0, 176, 252, 0.6),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(onTap:(){
                  Navigator.pop(context);
                },child: Image.asset("images/close.png")),
                SizedBox(height: 60),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/newsImage.png"),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfilePage()));
                        },
                        child: Text("Profile", style: nabeenFontStyle(20, white, fw400),))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset("images/face.png"),
                    SizedBox(width: 40),
                    Text("Be An Expert", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/dashboard.png"),
                    SizedBox(width: 40),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => BottomNavBarCurved()));
                        },
                        child: Text("Dashboard", style: nabeenFontStyle(20, white, fw400),))
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/statistics.png"),
                    SizedBox(width: 40),
                    Text("Statistics", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/notification.png"),
                    SizedBox(width: 40),
                    Text("Notification", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/training.png"),
                    SizedBox(width: 40),
                    Text("Training", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/info.png"),
                    SizedBox(width: 40),
                    Text("FAQ", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/language.png"),
                    SizedBox(width: 40),
                    Text("Language", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/information.png"),
                    SizedBox(width: 40),
                    Text("About Us", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/blog.png"),
                    SizedBox(width: 40),
                    Text("Blog", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset("images/settings.png"),
                    SizedBox(width: 40),
                    Text("Setting", style: nabeenFontStyle(20, white, fw400),)
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Image.asset("images/logout.png", height: 18,width: 18,),
                    SizedBox(width: 20),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>LoginPage()));
                        },
                        child: Text("Log Out", style: nabeenFontStyle(20, white, fw400),))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
