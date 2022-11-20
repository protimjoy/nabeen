import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_textfield.dart';
import 'package:nabeen/widget/profile_rounded.dart';

class StBanking6 extends StatefulWidget {
  const StBanking6({Key? key}) : super(key: key);

  @override
  State<StBanking6> createState() => _StBanking6State();
}

class _StBanking6State extends State<StBanking6> {
  TextEditingController v_description = TextEditingController();

  final List<String> items = [
    'BLOOD DONATION',
    'INVESTIGATION',
    'EXPERIMENT',
    'INFRASTRUCTURE',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex:1,
                child: customAppBar()),
            Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10,bottom: 50),
                          child: ProfileRounded(),
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
                                    "SELECT CATEGORY",
                                    style: nabeenFontStyle(20, black, fw400)
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
                        SizedBox(height: 30),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "CONTACT", FontWeight: fw400),
                        SizedBox(height: 30),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "ATTACH ID CARD", FontWeight: fw400),
                        SizedBox(height: 30),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "ATTACH DOCUMENT", FontWeight: fw400),
                        SizedBox(height: 30),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "EXPERT OF", FontWeight: fw400),
                        SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("DESCRIPTION",style: nabeenFontStyle(20, black, fw400),),
                            Container(
                              height: 184,
                              width: 348,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: customSkyBlue,width: 2),
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
                        SizedBox(height: 30),
                        CustomButton(onTap: (){}, fontsize: 25, textColor: white, backgroundColor: customSkyBlue, borderColor: transparent, height: 87, width: 204, text: "SUBMIT", FontWeight: fw500)
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
