import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_textfield.dart';
import 'package:nabeen/widget/profile_header.dart';
import 'package:nabeen/widget/profile_rounded.dart';
import 'package:nabeen/widget/shadow_button.dart';

class StBanking4 extends StatefulWidget {
  StBanking4({Key? key}) : super(key: key);

  @override
  State<StBanking4> createState() => _StBanking4State();
}

class _StBanking4State extends State<StBanking4> {
  TextEditingController institution = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController attachIdCard = TextEditingController();
  TextEditingController attachDocument = TextEditingController();
  TextEditingController expert = TextEditingController();
  TextEditingController description = TextEditingController();

  final List<String> items = [
    'ACCOUNTING',
    'GRAPHIC DESIGN',
    'APP DEVELOPMENTS',
    'FLUTTER DEVELOPMENTS',
    'INFRASTRUCTURE DESIGN'
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(flex:1,child: customAppBar()),
          Expanded(flex:9,child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                children: [
                  ProfileRounded(),
                  SizedBox(height: height*0.040),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("INSTITUTION", style: nabeenFontStyle(20, black, fw400)),
                      ),
                      CustomTextField(controller: institution, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
                    ],
                  ),
                  SizedBox(height: height*0.015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("CONTACT", style: nabeenFontStyle(20, black, fw400)),
                      ),
                      CustomTextField(controller: contact, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
                    ],
                  ),
                  SizedBox(height: height*0.015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("ATTACH ID CARD", style: nabeenFontStyle(20, black, fw400)),
                      ),
                      CustomTextField(controller: attachIdCard, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
                    ],
                  ),
                  SizedBox(height: height*0.015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("ATTACH DOCUMENT", style: nabeenFontStyle(20, black, fw400)),
                      ),
                      CustomTextField(controller: attachDocument, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
                    ],
                  ),
                  SizedBox(height: height*0.015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("EXPERT OF",style: nabeenFontStyle(20, black, fw400)),
                      ),
                      Container(
                          height: 61,
                          width: 348,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(color: customSkyBlue)
                          ),
                          child: DropdownButtonHideUnderline(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50.0),
                            child: DropdownButton2(
                              icon: Icon(Icons.keyboard_arrow_down, color: black,),
                              hint: Text(
                                  "SELECT",
                                  style: nabeenFontStyle(20, black, fw400), textAlign: TextAlign.center,
                              ),
                              items: items.map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Center(
                                  child: Text(item, style: nabeenFontStyle(15, black, fw400),
                                  ),
                                ),
                              )).toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                            ),
                          ))
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("DESCRIPTION",style: nabeenFontStyle(20, black, fw400)),
                      ),
                      Container(
                        height: 184,
                        width: 348,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: customSkyBlue,width: 1),
                        ),
                        child: TextField(
                          style: nabeenFontStyle(20, black, fw400),
                          maxLines: 6,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.040),
                  CustomButton(onTap: (){}, fontsize: 25, textColor: white, backgroundColor: customSkyBlue, borderColor: transparent, height: 87, width: 204, text: "SUBMIT", FontWeight: fw500)
                ],
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
