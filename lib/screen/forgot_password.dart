import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_textfield.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  TextEditingController newPassword = TextEditingController();
  TextEditingController reTypePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/forgot_password.png"),
              SizedBox(height: height*.015),
              Text("Reset Password", style: nabeenFontStyle(35,black,fw400)),
              SizedBox(height: height*.07),
              CustomTextField(controller: newPassword, hintText: "    New Password", textColor: Colors.black38, borderColor: customBlue, fontsize: 25, FontWeight: fw400, height: 73, width: 339),
              SizedBox(height: height*.025),
              CustomTextField(controller: reTypePassword, hintText: "    Re-Enter Password", textColor: Colors.black38, borderColor: customBlue, fontsize: 25, FontWeight: fw400, height: 73, width: 339),
              SizedBox(height: height*.06),
              CustomButton(
                  onTap: (){},
                  fontsize: 25,
                  textColor: white,
                  backgroundColor: black,
                  borderColor: transparent,
                  height: 73,
                  width: 339,
                  text: "Change Password", FontWeight: FontWeight.w400),
            ],
          ),
        )
      ),
    );
  }
}
