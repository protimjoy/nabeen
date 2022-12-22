import 'package:flutter/material.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:nabeen/theme.dart';

import '../../model/vision_model_data.dart';
import 'vision_details.dart';

class VisionPage extends StatefulWidget {
  const VisionPage({Key? key}) : super(key: key);

  @override
  State<VisionPage> createState() => _VisionPageState();
}

class _VisionPageState extends State<VisionPage> {
  final visionTarget = VisionModel.visions();

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
                  child: Text("VISION DESCRIPTION",style: nabeenFontStyle(15, black, fw500),),
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
                  child: Text("VISION TARGET",style: nabeenFontStyle(15, black, fw500),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: visionTarget.length,
                      itemBuilder: (context, index) {
                        var target_heading = visionTarget[index];
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>VisionDetails(modelData: visionTarget[index])));
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





