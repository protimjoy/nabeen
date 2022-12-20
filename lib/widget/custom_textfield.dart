import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabeen/theme.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key,
    required this.controller,
    required this.hintText,
    required this.textColor,
    required this.fontsize,
    required this.FontWeight
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final Color textColor;
  final FontWeight;
  double fontsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 340,
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.poppins(textStyle: TextStyle(color:Colors.black, fontSize:fontsize, fontWeight: FontWeight)),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
                color: customBlue,
                width: 1.0
            )
          ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                    color: customBlue,
                    width: 1.0
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                    color: customBlue,
                    width: 1.0
                )
            ),
          hintText: null == hintText ? "" : hintText,
          hintStyle: GoogleFonts.poppins(textStyle: TextStyle(color:textColor, fontSize:fontsize, fontWeight: FontWeight))
        ),
      ),
    );
  }
}
