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
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"),
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