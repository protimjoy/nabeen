import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class StBanking extends StatelessWidget {
  const StBanking({Key? key}) : super(key: key);

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
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "SCHOLARSHIP", FontWeight: fw500),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Spacer(),
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "ACADEMIC LOAN", FontWeight: fw500),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "START-UP LOAN", FontWeight: fw500),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Spacer(),
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "TREATMENT LOAN", FontWeight: fw500),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "PRIMARY", FontWeight: fw500),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
