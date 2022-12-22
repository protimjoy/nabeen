import 'package:flutter/material.dart';
import 'package:nabeen/model/sdg_model_data.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_button.dart';
import 'upload_challenge_document.dart';

class SDGDetails extends StatefulWidget {
  SDGDetails({Key? key,  this.modelData,}) : super(key: key);
  final SDGGoalTarget? modelData;

  @override
  State<SDGDetails> createState() => _SDGDetailsState();
}

class _SDGDetailsState extends State<SDGDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                child: ImageSlider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios, size: 30)),
                    Center(
                      child: CircleAvatar(
                        backgroundColor: customOrange,
                        radius: 60,
                        child: Text("?",
                            style: GoogleFonts.portLligatSlab(
                                color: white,
                                fontSize: 120,
                                fontWeight: fw400)),
                      ),
                    ),
                    SizedBox(height: height*0.025),
                    Text("${widget.modelData?.headings}",style: nabeenFontStyle(20, Color(0xFF241352), fw400)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text("${widget.modelData?.description}",textAlign: TextAlign.justify,style: nabeenFontStyle(18, Color(0xFF241352), fw300)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                child: CustomButton(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>UploadChallengeDocument(modelData: widget.modelData,)));
                    },
                    fontsize: 18,
                    textColor: white,
                    backgroundColor: customSkyBlue,
                    borderColor: transparent,
                    height: 65,
                    width: 250,
                    text: "Submit Challange",
                    FontWeight: fw400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
