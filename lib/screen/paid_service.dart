import 'package:flutter/material.dart';
import 'package:nabeen/screen/drawer.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class PaidService extends StatelessWidget {
   PaidService({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: MyDrawer(),
        body: Column(
          children: [
            Expanded(flex: 1, child: customAppBar(
              onTap: () {
                _globalKey.currentState!.openDrawer();
              },
            )),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      ImageSlider(),
                      SizedBox(height: 25),
                      CustomButton(
                          onTap: () {},
                          fontsize: 18,
                          textColor: white,
                          backgroundColor: customBlue,
                          borderColor: customSkyBlue,
                          height: 70,
                          width: 300,
                          text: "CREATE YOUR EXPERT PROFILE",
                          FontWeight: fw400),
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
                              width: 220,
                              text: "ACADEMIC COURSES",
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
                              width: 220,
                              text: "STUDENT BANKING",
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
                              width: 220,
                              text: "SKILL DEVELOPMENT",
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
                              width: 220,
                              text: "JOBS",
                              FontWeight: fw500),
                        ],
                      ),
                      SizedBox(height: 15)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
