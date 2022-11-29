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
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                child: Column(
                  children: [
                    ImageSlider(),
                    SizedBox(height: 25),
                    CustomButton(
                        onTap: () {},
                        fontsize: 16,
                        textColor: white,
                        backgroundColor: customBlue,
                        borderColor: customSkyBlue,
                        height: 70,
                        width: 300,
                        text: "SEND A REQUEST",
                        FontWeight: fw500),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        CustomButton(
                            onTap: () {},
                            fontsize: 16,
                            textColor: black,
                            backgroundColor: white,
                            borderColor: customSkyBlue,
                            height: 60,
                            width: 200,
                            text: "FOOD",
                            FontWeight: fw500),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Spacer(),
                        CustomButton(
                            onTap: () {},
                            fontsize: 16,
                            textColor: black,
                            backgroundColor: white,
                            borderColor: customSkyBlue,
                            height: 60,
                            width: 200,
                            text: "TREATMENT",
                            FontWeight: fw500),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        CustomButton(
                            onTap: () {},
                            fontsize: 16,
                            textColor: black,
                            backgroundColor: white,
                            borderColor: customSkyBlue,
                            height: 60,
                            width: 200,
                            text: "EDUCATION",
                            FontWeight: fw500),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Spacer(),
                        CustomButton(
                            onTap: () {},
                            fontsize: 16,
                            textColor: black,
                            backgroundColor: white,
                            borderColor: customSkyBlue,
                            height: 60,
                            width: 200,
                            text: "CLOTHING",
                            FontWeight: fw500),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        CustomButton(
                            onTap: () {},
                            fontsize: 16,
                            textColor: black,
                            backgroundColor: white,
                            borderColor: customSkyBlue,
                            height: 60,
                            width: 200,
                            text: "SECURITY",
                            FontWeight: fw500),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Spacer(),
                        CustomButton(
                            onTap: () {},
                            fontsize: 16,
                            textColor: black,
                            backgroundColor: white,
                            borderColor: customSkyBlue,
                            height: 60,
                            width: 200,
                            text: "ACOMODATION",
                            FontWeight: fw500),
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
