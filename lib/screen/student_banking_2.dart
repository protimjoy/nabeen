import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:nabeen/widget/news_show.dart';

class StBanking2 extends StatelessWidget {
  const StBanking2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(flex:1,
                child: customAppBar()),
            Expanded(flex:9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageSlider(),
                      SizedBox(height: 25),
                      CustomButton(onTap: (){}, fontsize: 20, textColor: white, backgroundColor: customSkyBlue, borderColor: transparent, height: 70, width: 285, text: "APPLY NOW", FontWeight: fw400),
                      SizedBox(height: 25),
                      NewsShow(),
                      NewsShow(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
