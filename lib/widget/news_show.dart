import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_img_button.dart';

class NewsShow extends StatelessWidget {
  NewsShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Image.asset("images/newsProfileImage.png"),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User Name Here", style: nabeenFontStyle(15, black, fw500)),
                    Text("1 hr", style: nabeenFontStyle(15, black, fw300)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Image.asset("images/newsImage.png"),
          Container(
            height: 70,
            width: double.infinity,
            color: Color(0xFFD9D9D9),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lorem Ipsum is simply dummy text of the printing",style: nabeenFontStyle(15, black, fw600)),
                  Text("Lorem Ipsum is simply dummy text of the printing",style: nabeenFontStyle(12, black, fw300)),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             CustomImageButton(onTap:(){},fontsize: 10, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: transparent, height: 24, width: 71, text: "Like", FontWeight: fw400, img: "images/like.png"),
             SizedBox(width: 15),
             CustomImageButton(onTap:(){},fontsize: 10, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: transparent, height: 24, width: 87, text: "Comment", FontWeight: fw400, img: "images/chat.png"),
             SizedBox(width: 15),
             CustomImageButton(onTap:(){},fontsize: 10, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: transparent, height: 24, width: 71, text: "Share", FontWeight: fw400, img: "images/share.png"),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}





//Text(text,style: GoogleFonts.poppins(textStyle: TextStyle(color: textColor, fontSize: fontsize, fontWeight: FontWeight)))