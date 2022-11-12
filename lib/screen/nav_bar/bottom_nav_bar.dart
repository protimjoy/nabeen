import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nabeen/screen/home_page.dart';
import 'package:nabeen/screen/news_portal_page.dart';
import 'package:nabeen/screen/newsfeed_page.dart';
import 'package:nabeen/screen/user_profile.dart';
import 'package:nabeen/screen/signup.dart';
import 'package:nabeen/theme.dart';

class BottomNavBarCurved extends StatefulWidget {
  const BottomNavBarCurved({Key? key}) : super(key: key);

  @override
  State<BottomNavBarCurved> createState() => _BottomNavBarCurvedState();
}

class _BottomNavBarCurvedState extends State<BottomNavBarCurved> {
  var _page =0;
  final pages = [HomePage(),ProfilePage(),NewsfeedPage(),NewsPortalPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: customPink,
          buttonBackgroundColor: transparent,
          backgroundColor: white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index){
            setState(() {
              _page = index;
            });
          },
          items: [
            Icon(Icons.home,color: black),
            Icon(Icons.person,color: black),
            Icon(Icons.add,color: black),
            Icon(Icons.newspaper,color: black),
          ]),
      body: pages[_page],
    );
  }
}
