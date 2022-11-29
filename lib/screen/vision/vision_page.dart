import 'package:flutter/material.dart';
import 'package:nabeen/screen/sdg/model_data.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/screen/sdg/sdg_details.dart';

class VisionPage extends StatefulWidget {
  const VisionPage({Key? key}) : super(key: key);

  @override
  State<VisionPage> createState() => _VisionPageState();
}

class _VisionPageState extends State<VisionPage> {
  static List<String> _visionTarget = [
    '1.1  TARGET & INDICATORS',
    '1.2  TARGET & INDICATORS',
    '1.3  TARGET & INDICATORS',
    '1.4  TARGET & INDICATORS',
    '1.5  TARGET & INDICATORS',
    '1.6  TARGET & INDICATORS',
  ];

  static List<String> _visionTargetDetails = [
    'One Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Two Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Three Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Four Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Five Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    'Six Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  ];

  final List<SDGGoalTarget> sdgTarget = List.generate(_visionTarget.length, (index) => SDGGoalTarget('${_visionTarget[index]}', '${_visionTargetDetails[index]}'));

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                Center(child: Text("VISION 2041",style: nabeenFontStyle(30, customSkyBlue, fw500),)),
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

                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true, // This is important ⬇️️
                  itemCount: _visionTarget.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0,left: 20,right: 20),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SDGDetails(sdggoaltarget: sdgTarget[index],)));
                        },
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9F9F9),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFDCDCDC),
                                  blurRadius: 10,
                                  offset: Offset(0, 0.75),
                                )
                              ]
                          ),
                          child: Center(child: Text(_visionTarget[index],style: nabeenFontStyle(14, black, fw300),)),
                        ),
                      ),
                    );
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}





