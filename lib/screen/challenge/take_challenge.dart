import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

import 'sdg_challenge_page.dart';

class TakeChallenge extends StatelessWidget {
  const TakeChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Expanded(flex: 1, child: customAppBar()),
          Expanded(
            flex: 9,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 50),
                  child: ImageSlider(),
                ),
                CustomButton(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SDGChallengePage()));
                    },
                    fontsize: 14,
                    textColor: black,
                    backgroundColor: white,
                    borderColor: customSkyBlue,
                    height: 70,
                    width: 304,
                    text: "SDG CHALLENGE",
                    FontWeight: fw500),
                SizedBox(height: 20),
                CustomButton(
                    onTap: () {},
                    fontsize: 14,
                    textColor: black,
                    backgroundColor: white,
                    borderColor: customSkyBlue,
                    height: 70,
                    width: 242,
                    text: "DAILY CHALLENGE",
                    FontWeight: fw500),
                SizedBox(height: 20),
                CustomButton(
                    onTap: () {},
                    fontsize: 14,
                    textColor: black,
                    backgroundColor: white,
                    borderColor: customSkyBlue,
                    height: 70,
                    width: 210,
                    text: "WEEKLY CHALLENGE",
                    FontWeight: fw500),
                SizedBox(height: 20),
                CustomButton(
                    onTap: () {},
                    fontsize: 14,
                    textColor: black,
                    backgroundColor: white,
                    borderColor: customSkyBlue,
                    height: 70,
                    width: 161,
                    text: "MONTHLY CHALLENGE",
                    FontWeight: fw500),
              ],
            ),
          )
        ],
      )),
    );
  }
}
