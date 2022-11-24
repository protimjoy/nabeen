import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_textfield.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Container(
              height: height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: height*.05),
                    Image.asset("images/signup.png", height: 150, width: 188),
                    SizedBox(height: height*.04),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("First Name", style: nabeenFontStyle(18, black, fw300)),
                        ),
                        CustomTextField(controller: firstName, hintText: "", textColor: black, borderColor: customBlue, fontsize: 25, FontWeight: fw400, height: 73, width: 339)
                      ],
                    ),
                    SizedBox(height: height*0.025),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("Last Name", style: nabeenFontStyle(18, black, fw300)),
                        ),
                        CustomTextField(controller: lastName, hintText: "", textColor: black, borderColor: customBlue, fontsize: 25, FontWeight: fw400, height: 73, width: 339)
                      ],
                    ),
                    SizedBox(height: height*0.025),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("Email", style: nabeenFontStyle(18, black, fw300)),
                        ),
                        CustomTextField(controller: email, hintText: "", textColor: black, borderColor: customBlue, fontsize: 25, FontWeight: fw400, height: 73, width: 339)
                      ],
                    ),
                    SizedBox(height: height*0.025),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("Password", style: nabeenFontStyle(18, black, fw300)),
                        ),
                        CustomTextField(controller: password, hintText: "", textColor: black, borderColor: customBlue, fontsize: 25, FontWeight: fw400, height: 73, width: 339)
                      ],
                    ),
                    SizedBox(height: height*0.025),
                    CustomButton(
                      onTap: (){},
                        fontsize: 25,
                        textColor: white,
                        backgroundColor: black,
                        borderColor: transparent,
                        height: 73,
                        width: 339,
                        text: "Signup", FontWeight: FontWeight.w400
                    ),
                    SizedBox(height: height*0.05),
                    Text("Signin",style: nabeenFontStyle(25, customPink, fw600)),
                    SizedBox(height: height*.04),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
