import 'package:flutter/material.dart';
import 'package:nabeen/model/sdg_model_data.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/screen/sdg/sdg_details.dart';

class SDGPage extends StatefulWidget {
  const SDGPage({Key? key}) : super(key: key);

  @override
  State<SDGPage> createState() => _SDGPageState();
}

class _SDGPageState extends State<SDGPage> {
  final sdgTarget = SDGGoalTarget.sdgtargets();

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
                Center(child: Text("SDG GOAL 1",style: nabeenFontStyle(30, customSkyBlue, fw500),)),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, top: 15),
                  child: Text("GOAL DESCRIPTION",style: nabeenFontStyle(15, black, fw500),),
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
                  padding: const EdgeInsets.only(top: 20.0, left: 25,bottom: 15),
                  child: Text("GOAL TARGET",style: nabeenFontStyle(15, black, fw500),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: sdgTarget.length,
                      itemBuilder: (context, index) {
                        var target_heading = sdgTarget[index];
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SDGDetails(modelData: sdgTarget[index],)));
                          },
                          child: Card(
                            color: Color(0xFFF9F9F9),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15.0),
                                child: Text("${target_heading.headings}", style: nabeenFontStyle(18, customBlue, fw300)),
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





