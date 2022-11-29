import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:nabeen/screen/drawer.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/shadow_button.dart';

class GovRepresent extends StatefulWidget {
  const GovRepresent({Key? key}) : super(key: key);

  @override
  State<GovRepresent> createState() => _GovRepresentState();
}

class _GovRepresentState extends State<GovRepresent> {
  final List<String> items = [
    'Zone 01',
    'Zone 02',
    'Zone 03',
    'Zone 04',
    'Zone 05',
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
            Expanded(flex: 1, child: customAppBar(
              onTap: () {
                _globalKey.currentState!.openDrawer();
              },
            )),
            Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                            color: customSkyBlue),
                        child: DropdownButtonHideUnderline(
                            child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 70.0),
                          child: DropdownButton2(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: white,
                            ),
                            hint: Text(selectedValue ?? "SELECT ZONE",
                                style: nabeenFontStyle(20, white, fw500)),
                            items: items
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Center(
                                        child: Text(
                                          item,
                                          style: nabeenFontStyle(
                                              15, black, fw400),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                          ),
                        ))),
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
                        FontWeight: fw300)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
