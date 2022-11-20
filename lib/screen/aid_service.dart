import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class AidService extends StatelessWidget {
  const AidService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 10),
                    child: Column(
                      children: [
                        ImageSlider(),
                        SizedBox(height: 25),
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: transparent, borderColor: customSkyBlue, height: 73, width: 354, text: "SEND A REQUEST", FontWeight: fw400),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "FOOD", FontWeight: fw500),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Spacer(),
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "TREATMENT", FontWeight: fw500),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "EDUCATION", FontWeight: fw500),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Spacer(),
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "CLOTHING", FontWeight: fw500),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "SECURITY", FontWeight: fw500),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Spacer(),
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "ACOMODATION", FontWeight: fw500),
                          ],
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
