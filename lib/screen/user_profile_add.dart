import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/profile_header.dart';

class UserProfileAdd extends StatelessWidget {
  const UserProfileAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex:1,
                child: customAppBar()),
            Expanded(
                flex:9,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfileHeader(),
                      Center(
                        child: Container(
                          height: 105,
                          width: 328,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9F9F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("CONGRATULATIONS!", style: nabeenFontStyle(14, customOrange, fw500),),
                              Text("TOWKIR AHMED YOU HAVE TAKEN A\nCHELLENGE FROM SDG GOAL",textAlign: TextAlign.center, style: nabeenFontStyle(14, black, fw500),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Image.asset("images/add_icon.png"),
                      SizedBox(height: 30),
                      CustomButton(onTap: (){}, fontsize: 14, textColor: black, backgroundColor: Color(0xFFF9F9F9), borderColor: transparent, height: 67, width: 310, text: "TAG REPRESENTATIVES", FontWeight: fw300),
                      SizedBox(height: 15),
                      CustomButton(onTap: (){}, fontsize: 14, textColor: black, backgroundColor: Color(0xFFF9F9F9), borderColor: transparent, height: 67, width: 310, text: "LAST DATE", FontWeight: fw300),
                      SizedBox(height: 15),
                      CustomButton(onTap: (){}, fontsize: 14, textColor: black, backgroundColor: Color(0xFFF9F9F9), borderColor: transparent, height: 67, width: 310, text: "CHELLENGE SUBMISSION", FontWeight: fw300),
                      SizedBox(height: 50),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
