import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class PaidService extends StatelessWidget {
  const PaidService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(flex:1,child: customAppBar()),
            Expanded(flex:9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageSlider(),
                      SizedBox(height: 25),
                      CustomButton(onTap: (){}, fontsize: 18, textColor: white, backgroundColor: customSkyBlue, borderColor: customSkyBlue, height: 73, width: 354, text: "CREATE YOUR EXPERT PROFILE", FontWeight: fw400),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "ACADEMIC COURSES", FontWeight: fw500),
                          Spacer()
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Spacer(),
                          CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "STUDENT BANKING", FontWeight: fw500),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "SKILL DEVELOPMENT", FontWeight: fw500),
                          Spacer()
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Spacer(),
                          CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "JOBS", FontWeight: fw500),
                        ],
                      ),
                      SizedBox(height: 15)
                    ],
                  ),
                ),)
          ],
        ),
      ),
    );
  }
}
