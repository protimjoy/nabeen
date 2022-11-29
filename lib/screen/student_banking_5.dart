import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_textfield.dart';
import 'package:nabeen/widget/profile_rounded.dart';

class StBanking5 extends StatefulWidget {
  StBanking5({Key? key}) : super(key: key);

  @override
  State<StBanking5> createState() => _StBanking5State();
}

class _StBanking5State extends State<StBanking5> {
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
                  CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: transparent, borderColor: customSkyBlue, height: 61, width: 348, text: "SELECT CATEGORTY", FontWeight: fw400),
                  SizedBox(height: height*0.025),
                  CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: transparent, borderColor: customSkyBlue, height: 61, width: 348, text: "CONTACT", FontWeight: fw400),
                  SizedBox(height: height*0.025),
                  CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: transparent, borderColor: customSkyBlue, height: 61, width: 348, text: "ATTACH ID CARD", FontWeight: fw400),
                  SizedBox(height: height*0.025),
                  CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: transparent, borderColor: customSkyBlue, height: 61, width: 348, text: "ATTACH DOCUMENT", FontWeight: fw400),
                  SizedBox(height: height*0.025),
                  CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: transparent, borderColor: customSkyBlue, height: 61, width: 348, text: "EXPERT OF", FontWeight: fw400),
                  SizedBox(height: height*0.025),
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
