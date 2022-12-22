import 'package:flutter/material.dart';
import 'package:nabeen/screen/home_page.dart';
import 'package:nabeen/widget/custom_button.dart';

import '../theme.dart';

class SuccessSubmit extends StatelessWidget {
  const SuccessSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 60,
                  child: Icon(Icons.done, size: 100, color: Colors.pinkAccent)),
            ),
            SizedBox(height: 50),
            Text(
              "Your Submission\nSubmitted\nSuccessfully",
              textAlign: TextAlign.center,
              style: nabeenFontStyle(16, Colors.green, fw400),
            ),
            SizedBox(height: 50),
            CustomButton(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage()));
                },
                fontsize: 20,
                textColor: white,
                backgroundColor: customBlue,
                borderColor: customSkyBlue,
                height: 60,
                width: 250,
                text: "Go to Home Page",
                FontWeight: fw400)
          ],
        ),
      ),
    );
  }
}
