import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 256,
          decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(60)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/verified.png"),
              Text("TOWKIR AHMED",style: nabeenFontStyle(25, Color(0xFF241352), fw600)),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",textAlign: TextAlign.center, style: nabeenFontStyle(16, Color(0xFF241352), fw300),),
        ),
        SizedBox(height: 15),
        Image.asset("images/profile_image.png"),
        SizedBox(height: 20),
      ],
    );
  }
}
