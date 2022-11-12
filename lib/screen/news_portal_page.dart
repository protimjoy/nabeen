import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:nabeen/widget/news_show.dart';

class NewsPortalPage extends StatelessWidget {
  const NewsPortalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ImageSlider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(onTap: (){}, fontsize: 15, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: transparent, height: 47, width: 187, text: "INTERNATIONAL", FontWeight: fw500),
                    CustomButton(onTap: (){}, fontsize: 15, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: transparent, height: 47, width: 187, text: "BANGLADESH AFFAIRS", FontWeight: fw500),
                  ],
                ),
              ),
              NewsShow(),
              NewsShow(),
              NewsShow()
            ],
          ),
        ),
      ),
    );
  }
}
