import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nabeen/model/vision_model_data.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:file_picker/file_picker.dart';
import '../../model/sdg_challenge_model_data.dart';
import '../successfully_submitted.dart';
import '../../model/sdg_model_data.dart';

class UploadChallengeDocument extends StatefulWidget {

  UploadChallengeDocument({Key? key, this.modelData, this.visionModelData,this.sdgChallengeModelData}) : super(key: key);
  final SDGGoalTarget? modelData;
  final SDGChallengeModel? sdgChallengeModelData;
  final VisionModel? visionModelData;
  @override
  State<UploadChallengeDocument> createState() => _UploadChallengeDocumentState();
}

class _UploadChallengeDocumentState extends State<UploadChallengeDocument> {
  File file = File("");
  String? fileName;
  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image
    );

    if(result!=null){
      setState(() {
        file = File(result.files.single.path ?? "");
      });
    }
  }
  void pickDocumentFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any
    );

    if(result!=null){
      setState(() {
        fileName = result!.files.first.name;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageSlider(),
                    SizedBox(height: 10),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20.0),
                    //   child: Text(//level description
                    //     "${widget.modelData?.headings}",
                    //     style: nabeenFontStyle(15, black, fw500),
                    //   ),
                    // ),
                    // SizedBox(height: 10),
                    Center(
                      child: Container(
                        height: 123,
                        width: 351,
                        decoration: BoxDecoration(
                            color: customOrange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          textAlign: TextAlign.center,
                          style: nabeenFontStyle(15, white, fw500),
                        )),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        height: 550,
                        width: 275,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(37),
                            border: Border.all(color: customSkyBlue)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                pickFile();
                              },
                              child: CircleAvatar(
                                backgroundImage: FileImage(file),
                                radius: 60,
                                child: Icon(Icons.camera_alt_outlined),
                              ),
                            ),
                            Container(
                              height: 47,
                              width: 259,
                              decoration: BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(30)),
                              child: InkWell(
                                onTap: (){
                                  pickDocumentFile();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.article_outlined),
                                    Text(
                                      "Submit Document",
                                      style: nabeenFontStyle(15, black, fw300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(fileName == null?"":"$fileName",style: nabeenFontStyle(14, Colors.red, fw500),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Comments",
                                  style: nabeenFontStyle(15, black, fw300),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 179,
                                  width: 245,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Colors.black38, width: 1),
                                  ),
                                  child: TextField(
                                    style: nabeenFontStyle(16, black, fw400),
                                    maxLines: 6,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                  ),
                                ),
                              ],
                            ),
                            CustomButton(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>SuccessSubmit()));
                                },
                                fontsize: 25,
                                textColor: white,
                                backgroundColor: customSkyBlue,
                                borderColor: transparent,
                                height: 60,
                                width: 200,
                                text: "SUBMIT",
                                FontWeight: fw400)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
