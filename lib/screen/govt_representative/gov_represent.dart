import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nabeen/screen/drawer.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/shadow_button.dart';

import '../../widget/zone_dropdown.dart';

class GovRepresent extends StatefulWidget {
  const GovRepresent({Key? key}) : super(key: key);

  @override
  State<GovRepresent> createState() => _GovRepresentState();
}

class _GovRepresentState extends State<GovRepresent> {

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
                flex: 1,
                child: customAppBar(
                  onTap: () {
                    _globalKey.currentState!.openDrawer();
                  },
                )),
            Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ZoneDropdown(),
                    SizedBox(height: 50),
                    CustomShadowButton(
                        onTap: () {},
                        fontsize: 20,
                        textColor: black,
                        backgroundColor: Color(0xFFF9F9F9),
                        height: 65,
                        width: 300,
                        text: "ADMINSTRATION",
                        FontWeight: fw300),
                    SizedBox(height: 30),
                    CustomShadowButton(
                        onTap: () {},
                        fontsize: 20,
                        textColor: black,
                        backgroundColor: Color(0xFFF9F9F9),
                        height: 65,
                        width: 300,
                        text: "ELECTED POLITICIAN",
                        FontWeight: fw300),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}










// DropdownButton(
//     hint: Text("SELECT ZONE",style: TextStyle(color: Colors.black),),
//     onChanged: (val) {
//       setState(() {
//         this.gender = val;
//       });
//     },
//     value: this.gender,
//     items: [
//       DropdownMenuItem(
//         value: 'Mars',
//         child: Text('Mars'),
//       ),
//     ])