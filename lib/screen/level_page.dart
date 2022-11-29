import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/profile_rounded.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ProfileRounded(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                    child: CustomButton(
                        onTap: () {},
                        fontsize: 14,
                        textColor: white,
                        backgroundColor: customBlue,
                        borderColor: customSkyBlue,
                        height: 70,
                        width: 300,
                        text: "TOP 100 PROFILES",
                        FontWeight: fw500)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15),
                child: Text(
                  "TOP 100 PROFILES",
                  style: nabeenFontStyle(14, black, fw500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  child: GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(15, (index) {
                      return Center(
                        child: Container(
                          height: 87,
                          width: 116,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: customSkyBlue)),
                          child: Center(
                              child: Text(
                            "LAVEL ${index + 1}",
                            style: nabeenFontStyle(14, black, fw500),
                          )),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
