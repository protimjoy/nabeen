import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_textfield.dart';
import 'package:nabeen/widget/shadow_button.dart';

class TutorsProfileDesign extends StatelessWidget {
  TutorsProfileDesign({Key? key}) : super(key: key);

  TextEditingController address = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController attachIdCard = TextEditingController();
  TextEditingController attachDocument = TextEditingController();
  TextEditingController expert = TextEditingController();
  TextEditingController reference = TextEditingController();

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
                  CustomShadowButton(onTap: (){}, fontsize: 15, textColor: white, backgroundColor: customSkyBlue, height: 85, width: 300, text: "SELECT HELP CATEGORY", FontWeight: fw400),
                  SizedBox(height: height*0.020),
                  Container(
                    height: 56,
                    width: 256,
                    decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/verified.png"),
                        Text("TOWKIR AHMED",style: nabeenFontStyle(25, Color(0xFF241352), fw600)),
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.025),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("ADDRESS", style: nabeenFontStyle(20, black, fw400)),
                      ),
                      CustomTextField(controller: address, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
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
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("EXPERT OF", style: nabeenFontStyle(20, black, fw400)),
                      ),
                      CustomTextField(controller: expert, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
                    ],
                  ),
                  SizedBox(height: height*0.015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("RERFERENCE", style: nabeenFontStyle(20, black, fw400)),
                      ),
                      CustomTextField(controller: reference, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
                    ],
                  ),
                  SizedBox(height: height*0.015),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("PROBLEM DESCRIPTION",style: nabeenFontStyle(20, black, fw400)),
                      ),
                      Container(
                        height: 211,
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
