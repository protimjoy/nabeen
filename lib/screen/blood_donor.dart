import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class BloodDonor extends StatelessWidget {
  const BloodDonor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(flex: 1, child: customAppBar()),
          Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ImageSlider(),
                    SizedBox(height: height * 0.020),
                    CustomButton(
                        onTap: () {},
                        fontsize: 20,
                        textColor: white,
                        backgroundColor: customSkyBlue,
                        borderColor: transparent,
                        height: 80,
                        width: 300,
                        text: "VOLUNTEER PROFILE",
                        FontWeight: fw400),
                    SizedBox(height: height * 0.030),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BLOOD DONAR",
                              style: nabeenFontStyle(20, black, fw400)),
                          SizedBox(height: height * 0.005),
                          Container(
                            height: 180,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 139,
                                          width: 139,
                                          margin: EdgeInsets.only(right: 15),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(23),
                                            border: Border.all(
                                                color: Color(0xFF00B0FC),
                                                width: 1),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Jhon Smith",
                                                  style: nabeenFontStyle(
                                                      15, black, fw500)),
                                              SizedBox(height: 10),
                                              Text("CATEGORY",
                                                  style: nabeenFontStyle(
                                                      15, black, fw300)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: Image.asset("images/home.png"),
                                        left: 30,
                                        right: 50,
                                        top: -12,
                                      )
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.020),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("EXPERIMENT",
                              style: nabeenFontStyle(20, black, fw400)),
                          SizedBox(height: height * 0.005),
                          Container(
                            height: 180,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 139,
                                          width: 139,
                                          margin: EdgeInsets.only(right: 15),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(23),
                                            border: Border.all(
                                                color: Color(0xFF00B0FC),
                                                width: 1),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Jhon Smith",
                                                  style: nabeenFontStyle(
                                                      15, black, fw500)),
                                              SizedBox(height: 10),
                                              Text("CATEGORY",
                                                  style: nabeenFontStyle(
                                                      15, black, fw300)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: Image.asset("images/home.png"),
                                        left: 30,
                                        right: 50,
                                        top: -12,
                                      )
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.020),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("INVESTIGATION",
                              style: nabeenFontStyle(20, black, fw400)),
                          SizedBox(height: height * 0.005),
                          Container(
                            height: 180,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 139,
                                          width: 139,
                                          margin: EdgeInsets.only(right: 15),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(23),
                                            border: Border.all(
                                                color: Color(0xFF00B0FC),
                                                width: 1),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text("Jhon Smith",
                                                  style: nabeenFontStyle(
                                                      15, black, fw500)),
                                              SizedBox(height: 10),
                                              Text("CATEGORY",
                                                  style: nabeenFontStyle(
                                                      15, black, fw300)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: Image.asset("images/home.png"),
                                        left: 30,
                                        right: 50,
                                        top: -12,
                                      )
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
