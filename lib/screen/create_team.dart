import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_textfield.dart';

class TeamPage extends StatelessWidget {
  TeamPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text("CREATE YOUR TEAM", style: nabeenFontStyle(20, black, fw500)),
                SizedBox(
                  width: 385,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: black),
                          border: OutlineInputBorder(

                          )
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
