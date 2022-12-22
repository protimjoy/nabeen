import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../screen/govt_representative/gov_represen_profiles.dart';
import '../screen/home_page.dart';
import '../screen/landing_page.dart';
import '../theme.dart';

class ZoneDropdown extends StatefulWidget {
  ZoneDropdown({Key? key}) : super(key: key);

  @override
  State<ZoneDropdown> createState() => _ZoneDropdownState();
}

class _ZoneDropdownState extends State<ZoneDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              color: customSkyBlue),
          child: DropdownButtonHideUnderline(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: DropdownButton2(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: white,
                  ),
                  hint: Text(selectedValue ?? "SELECT ZONE",
                      style: nabeenFontStyle(20, white, fw500)),
                  items: [
                    DropdownMenuItem(
                      value: 'zone 1',
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>GovRepresentativeProfilesZone1()));
                        },
                        child: Center(child: Text("Zone 1")),),
                    ),
                    DropdownMenuItem(
                      value: 'zone 2',
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>GovRepresentativeProfilesZone1()));
                        },
                        child: Center(child: Text("Zone 2")),),
                    ),
                    DropdownMenuItem(
                      value: 'zone 3',
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>GovRepresentativeProfilesZone1()));
                        },
                        child: Center(child: Text("Zone 3")),),
                    ),
                  ],

                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                ),
              )));
  }
}
