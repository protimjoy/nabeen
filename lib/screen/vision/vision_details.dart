import 'package:flutter/material.dart';
import 'package:nabeen/screen/sdg/model_data.dart';
import 'package:nabeen/screen/vision/model_data.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class VisionDetails extends StatelessWidget {
  final VisionTarget visionTarget;
  VisionDetails({Key? key, required this.visionTarget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 15),
                child: ImageSlider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios,size: 30)),
                    Center(
                      child: CircleAvatar(
                        backgroundColor: customOrange,
                        radius: 80,
                        child: Text("?",style: GoogleFonts.portLligatSlab(color: white, fontSize: 160, fontWeight: fw400)),
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(visionTarget.headings,style: nabeenFontStyle(20, black, fw300),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(visionTarget.description,style: GoogleFonts.portLligatSlab(color: black, fontSize: 20, fontWeight: fw400)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
