import 'package:flutter/material.dart';
import 'package:nabeen/screen/login_page.dart';
import 'package:nabeen/theme.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: white,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 240.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/land_bg.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Image(image: AssetImage("images/land_img.png"),height: height*.4,)
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  children: [
                    Text("Let\'s connect",style: nabeenFontStyle(32,white,fw600)),
                    Text("with eatch other",style: nabeenFontStyle(32,white,fw600)),
                    SizedBox(height: height*.02),
                    Text("Lorem Ipsum is simply dummy text of\n the printing and typesetting industry.",style: nabeenFontStyle(14,white,fw400)),
                    SizedBox(height: height*.05),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>LoginPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFe4992),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        height: 60,
                        width: 233,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Let\'s start", style: nabeenFontStyle(20,white,fw600),),
                            Icon(Icons.arrow_forward,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height*.05)
                  ],
                ))
          ],
        )
      ),
    );
  }
}
