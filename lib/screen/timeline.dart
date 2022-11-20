import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/profile_header.dart';

class Timeline extends StatelessWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex:1,
                child: customAppBar()),
            Expanded(
                flex:9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileHeader(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: customSkyBlue),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Image.asset("images/quality_1.png"),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: customSkyBlue),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Image.asset("images/solution.png"),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: customSkyBlue),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Image.asset("images/star_1.png"),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: customSkyBlue),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Image.asset("images/ranking.png"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text("ACHIEVEMENT", style: nabeenFontStyle(15, black, fw500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 260,
                        width: double.infinity,
                        child: GridView.count(
                          crossAxisCount: 3,
                          children: List.generate(15, (index){
                            return Center(
                              child: Container(
                                height: 76,
                                width: 76,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFD9D9D9)
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),

                  ],
                ))
          ],
        ),
      ),
    );
  }
}
