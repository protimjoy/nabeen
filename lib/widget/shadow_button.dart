import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabeen/theme.dart';

class CustomShadowButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String text;
  final FontWeight;
  final VoidCallback onTap;
  double height;
  double width;
  double fontsize;

  CustomShadowButton({Key? key,
    required this.onTap,
    required this.fontsize,
    required this.textColor,
    required this.backgroundColor,
    required this.height,
    required this.width,
    required this.text,
    required this.FontWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        child: Center(child: Text(text,textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: TextStyle(color: textColor, fontSize: fontsize, fontWeight: FontWeight)))
        ),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: transparent
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFDCDCDC),
                blurRadius: 10,
                offset: Offset(0, 0.75),
              )
            ]
        ),
      ),
    );
  }
}


class CustomShadowButton2 extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onTap;

  CustomShadowButton2({Key? key,
    required this.onTap,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          width: 386,
          height: 87,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Text(text1,style: GoogleFonts.poppins(textStyle: TextStyle(color: black, fontSize: 20, fontWeight: fw500))),
                  SizedBox(width: 20),
                  Text(text2,style: GoogleFonts.poppins(textStyle: TextStyle(color: black, fontSize: 14, fontWeight: fw300)))
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                  color: transparent
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFDCDCDC),
                  blurRadius: 10,
                  offset: Offset(0, 0.75),
                )
              ]
          ),
        ),
      ),
    );
  }
}