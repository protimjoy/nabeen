import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/image_slider.dart';

class LevelPageTwo extends StatelessWidget {
  const LevelPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(flex:6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageSlider(),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("LEVEL DESCRIPTION",style: nabeenFontStyle(15, black, fw500),),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Container(
                          height: 123,
                          width: 351,
                          decoration: BoxDecoration(
                              color: customOrange,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",textAlign: TextAlign.center,style: nabeenFontStyle(15, white, fw500),)),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(flex:7,
                child: Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(20, (index){
                      return Center(
                        child: Container(
                          height: 149,
                          width: 174,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: customSkyBlue)
                          ),
                          child: Center(child: Text("TASK", style: nabeenFontStyle(14, black, fw500),)),
                        ),
                      );
                    }),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
