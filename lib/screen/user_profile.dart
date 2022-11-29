import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/profile_header.dart';
import 'package:nabeen/widget/shadow_button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'drawer.dart';
import 'timeline.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> items = [
    'Doctor',
    'Engineer',
    'Graphic Designer',
    'Student',
    'Java Developer'
  ];
  String? selectedValue;

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: MyDrawer(),
        body: Column(
          children: [
            Expanded(
                flex:1,
                child: customAppBar(
                  onTap: (){
                    _globalKey.currentState!.openDrawer();
                  },
                )
            ),
            Expanded(
                flex:8,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(
                      children: [
                        ProfileHeader(),
                        SizedBox(height: 20),
                        Container(
                          height: 65,
                          width: 300,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFDCDCDC),
                                  blurRadius: 10,
                                  offset: Offset(0, 0.75),
                                )
                              ],
                            borderRadius: BorderRadius.circular(60),
                            color: Color(0xFFF9F9F9)
                          ),
                          child: DropdownButtonHideUnderline(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 45.0),
                            child: DropdownButton2(
                              icon: Icon(Icons.keyboard_arrow_down),
                              hint: Text(
                                  selectedValue ?? "OCCUPTION",
                                style: nabeenFontStyle(20, black, fw300)
                              ),
                                items: items.map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Center(
                                        child: Text(item, style: nabeenFontStyle(15, black, fw400),
                                        ),
                                      ),
                                    )).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                            ),
                          ))
                        ),
                        SizedBox(height: 20),
                        CustomShadowButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: Color(0xFFF9F9F9), height: 65, width: 300, text: "HEIGHT", FontWeight: fw300),
                        SizedBox(height: 20),
                        CustomShadowButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: Color(0xFFF9F9F9), height: 65, width: 300, text: "MAIL ADDRESS", FontWeight: fw300),
                        SizedBox(height: 20),
                        CustomShadowButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: Color(0xFFF9F9F9), height: 65, width: 300, text: "ADDRESS", FontWeight: fw300),
                        SizedBox(height: 20),
                        CustomShadowButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: Color(0xFFF9F9F9), height: 65, width: 300, text: "CONTACT", FontWeight: fw300),
                        SizedBox(height: 20),
                        CustomShadowButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: Color(0xFFF9F9F9), height: 65, width: 300, text: "FOLLOWED BY", FontWeight: fw300),
                        SizedBox(height: 50),
                        CustomButton(onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => TimeLine()));
                        }, fontsize: 20, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: transparent, height: 65, width: 205, text: "TIMELINE", FontWeight: fw500)
                      ],
                    ),
                  ),
                )
            )
          ],

        ),
      ),
    );
  }
}