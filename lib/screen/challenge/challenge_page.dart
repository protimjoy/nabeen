import 'package:flutter/material.dart';
import 'package:nabeen/screen/challenge/take_challenge.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageSlider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Center(child: CustomButton(onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TakeChallenge()));
                        }, fontsize: 14, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 70, width: 304, text: "TAKE A CHALLENG", FontWeight: fw500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,bottom: 10),
                        child: Text("PROFILES", style: nabeenFontStyle(14, black, fw500),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,top: 15,bottom: 10),
                        child: Text("TOP 100 PROFILES", style: nabeenFontStyle(14, black, fw500),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
