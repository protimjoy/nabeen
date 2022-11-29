import 'package:flutter/material.dart';
import 'package:nabeen/screen/forgot_password.dart';
import 'package:nabeen/screen/nav_bar/bottom_nav_bar.dart';
import 'package:nabeen/screen/signup.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 240.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/login_bg.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Image(
                image: AssetImage("images/login_img.png"),
                height: height * .4,
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  Text("Welcome to Nabeen 👋",
                      style: nabeenFontStyle(20, customBlue, fw600)),
                  Text("Improve your skills for a glorious future",
                      style: nabeenFontStyle(14, black, fw300)),
                  SizedBox(
                    height: height * .04,
                  ),
                  CustomButton(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => BottomNavBarCurved()));
                      },
                      fontsize: 18,
                      textColor: white,
                      backgroundColor: black,
                      borderColor: transparent,
                      height: 65,
                      width: 329,
                      text: "Sign in",
                      FontWeight: FontWeight.w600),
                  SizedBox(height: height * .005),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ForgotPassword()));
                        },
                        child: Text("Forget Password?",
                            style: nabeenFontStyle(15, customPink, fw400))),
                  ),
                  SizedBox(height: height * .01),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => LoginPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      height: 45,
                      width: 329,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("images/fb_logo.png"),
                          Text(
                            "Continue with Facebook",
                            style: nabeenFontStyle(18, customBlue, fw500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member",
                          style: nabeenFontStyle(15, customBlue, fw400)),
                      GestureDetector(
                          onTap: () {},
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => SignUp()));
                              },
                              child: Text("?Register Now",
                                  style:
                                      nabeenFontStyle(15, customPink, fw400)))),
                    ],
                  ),
                  SizedBox(height: height * .05),
                ],
              )),
        ],
      )),
    );
  }
}
