import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final FontWeight;
  final VoidCallback onTap;
  double height;
  double width;
  double fontsize;

  CustomButton({Key? key,
    required this.onTap,
    required this.fontsize,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.height,
    required this.width,
    required this.text,
    required this.FontWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: width,
          height: height,
          child: Center(child: Text(text,textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: TextStyle(color: textColor, fontSize: fontsize, fontWeight: FontWeight)))
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: borderColor
            )
          ),
        ),
      ),
    );
  }
}
