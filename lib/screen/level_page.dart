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
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: ProfileRounded(),
                )),
            Expanded(
                flex: 1,
                child: CustomButton(onTap: (){}, fontsize: 14, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 70, width: 304, text: "TOP 100 PROFILES", FontWeight: fw500)),
            Expanded(
                flex:9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Container(
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(15, (index){
                        return Center(
                          child: Container(
                            height: 87,
                            width: 116,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: customSkyBlue)
                            ),
                            child: Center(child: Text("LAVEL ${index+1}", style: nabeenFontStyle(14, black, fw500),)),
                          ),
                        );
                      })
                      ,

                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
