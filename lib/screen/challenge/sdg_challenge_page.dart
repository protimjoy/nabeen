import 'package:flutter/material.dart';
import 'package:nabeen/model/sdg_model_data.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/screen/sdg/sdg_details.dart';

import '../../model/sdg_challenge_model_data.dart';
import 'challenge_details.dart';

class SDGChallengePage extends StatefulWidget {
  const SDGChallengePage({Key? key}) : super(key: key);

  @override
  State<SDGChallengePage> createState() => _SDGChallengePageState();
}

class _SDGChallengePageState extends State<SDGChallengePage> {
  final sdgChallenge = SDGChallengeModel.sdg_challenges();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ImageSlider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, top: 15),
                  child: Text("CHALLENGE DESCRIPTION",style: nabeenFontStyle(15, black, fw500),),
                ),
                Center(
                  child: Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        color: customOrange,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",textAlign: TextAlign.center, style: nabeenFontStyle(15, white, fw500),)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: sdgChallenge.length,
                      itemBuilder: (context, index) {
                        var target_heading = sdgChallenge[index];
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ChallengeDetails(modelData: sdgChallenge[index],)));
                          },
                          child: Card(
                            color: Color(0xFFF9F9F9),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15.0),
                                child: Row(
                                  children: [
                                    Image.asset("images/verified.png"),
                                    SizedBox(width: 20),
                                    Text("${target_heading.headings}", style: nabeenFontStyle(18, customBlue, fw300)),
                                  ],
                                )
                              ),
                            ),
                            // child: ListTile(
                            //   title: Text("${user.name}"),
                            //   subtitle:Text("${user.status}"),
                            // ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}





