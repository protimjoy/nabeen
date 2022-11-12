import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_textfield.dart';

class VolutaryService extends StatefulWidget {
  const VolutaryService({Key? key}) : super(key: key);

  @override
  State<VolutaryService> createState() => _VolutaryServiceState();
}

class _VolutaryServiceState extends State<VolutaryService> {
  TextEditingController v_description = TextEditingController();
  static List<String> v_services = [
    'PROBLEM CATEGORY',
    'LOCATION',
    'ATTACH ID CARD',
    'ATTACH DOCUMENT',
    'SUFFERING PEOPLE'
  ];
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CircleAvatar(
                            backgroundColor: customSkyBlue,
                            radius: 80,
                            child: CircleAvatar(
                              backgroundColor: white,
                              radius: 75,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/newsImage.png"),
                                radius: 70,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "PROBLEM CATEGORY", FontWeight: fw400),
                        SizedBox(height: 15),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "LOCATION", FontWeight: fw400),
                        SizedBox(height: 15),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "ATTACH ID CARD", FontWeight: fw400),
                        SizedBox(height: 15),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "ATTACH DOCUMENT", FontWeight: fw400),
                        SizedBox(height: 15),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 64, width: 348, text: "SUFFERING PEOPLE", FontWeight: fw400),
                        SizedBox(height: 15),
                        Center(
                          child: Container(
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
                                hintText: "DESCRIPTION",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                  )
                              ),
                            ),
                          ),
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
