import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/news_show.dart';

class NewsfeedPage extends StatelessWidget {
  const NewsfeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: customAppBar()
            ),
            Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: CustomButton(onTap: (){}, fontsize: 15, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: transparent, height: 95, width: 315, text: "WHAT IS ON YOUR MIND", FontWeight: fw400),
                      ),
                      NewsShow(),
                      NewsShow()
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
