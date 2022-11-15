import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';

class ProfileRounded extends StatelessWidget {
  const ProfileRounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: customSkyBlue,
              radius: 80,
              child: CircleAvatar(
                backgroundColor: white,
                radius: 75,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/newsImage.png"),
                  radius: 70,
                ),
              ),
            ),
          ),
          Center(child: Text("Mrs. Nayla Haque",style: nabeenFontStyle(20, black, fw400))),
        ],
      ),
    );
  }
}
