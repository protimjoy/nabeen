import 'package:flutter/material.dart';
import 'package:nabeen/screen/challenge/challenge_page.dart';
import 'package:nabeen/screen/sdg/sdg_page.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:marquee/marquee.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_img_button.dart';
import 'package:nabeen/widget/news_show.dart';
import 'package:nabeen/widget/image_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _cat = ['AID\nSERVICES','PAID\nSERVICES', 'VOLUNTARY\nSERVICES'];
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(0, 176, 252, 0.6),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(onTap:(){
                      Navigator.pop(context);
                    },child: Image.asset("images/close.png")),
                    SizedBox(height: 60),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/newsImage.png"),
                        ),
                        SizedBox(width: 20),
                        Text("Profile", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/face.png"),
                        SizedBox(width: 40),
                        Text("Be An Expert", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/dashboard.png"),
                        SizedBox(width: 40),
                        Text("Dashboard", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/statistics.png"),
                        SizedBox(width: 40),
                        Text("Statistics", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/notification.png"),
                        SizedBox(width: 40),
                        Text("Notification", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/training.png"),
                        SizedBox(width: 40),
                        Text("Training", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/info.png"),
                        SizedBox(width: 40),
                        Text("FAQ", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/language.png"),
                        SizedBox(width: 40),
                        Text("Language", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/information.png"),
                        SizedBox(width: 40),
                        Text("About Us", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/blog.png"),
                        SizedBox(width: 40),
                        Text("Blog", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset("images/settings.png"),
                        SizedBox(width: 40),
                        Text("Setting", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Image.asset("images/logout.png", height: 18,width: 18,),
                        SizedBox(width: 20),
                        Text("Log Out", style: nabeenFontStyle(20, white, fw400),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body:Container(
          child:Column(
            children: [
              Expanded(
                  flex: 1,
                  child: customAppBar(
                    onTap: (){
                      _globalKey.currentState!.openDrawer();
                    },
                  )
              ),
              Expanded(
                  flex: 8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                          child: Marquee(
                            text: "This is a dummy news (1) || This is a dummy news (2) || ",
                            style: nabeenFontStyle(16, black, fw400)),
                          ),
                        SizedBox(height: 10),
                        ImageSlider(),
                        SizedBox(height: 10),
                        CustomButton(onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SDGPage()));
                        },fontsize: 16, textColor: white, backgroundColor: Color(0xFFFC5B00), borderColor: transparent, height: 96, width: 377, text: "SUSTAINABLE DEVELEPMENT GOALS", FontWeight: fw400),
                        SizedBox(height: 10),
                        CustomButton(onTap: (){},fontsize: 16, textColor: white, backgroundColor: Color(0xFFFC5B00), borderColor: transparent, height: 96, width: 316, text: "VISION 2041", FontWeight: fw400),
                        SizedBox(height: 10),
                        CustomButton(onTap: (){},fontsize: 16, textColor: white, backgroundColor: Color(0xFFFC5B00), borderColor: transparent, height: 96, width: 253, text: "GOVERNMENT\nREPRESANTATIVES", FontWeight: fw400),
                        SizedBox(height: 10),
                        CustomButton(onTap: (){},fontsize: 16, textColor: white, backgroundColor: Color(0xFFFC5B00), borderColor: transparent, height: 96, width: 195, text: "TAKE A TEST", FontWeight: fw400),
                        SizedBox(height: 25),
                        //ListView.builder
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            height: height*0.15,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: _cat.length,
                                itemBuilder: (context,index){
                                  return Container(
                                    height: 50,
                                    width: 180,
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Color(0xFF00B0FC),
                                          width: 2
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                      child: Center(child: Text(_cat[index],textAlign: TextAlign.center, style: TextStyle(color:Color(0xFF2f2f2f),fontSize: height*.03),)),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        SizedBox(height: 25),
                        //custom image button
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomImageButton(onTap:(){},fontsize: 16, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: Colors.transparent, height: 96, width: 185, text: "Level", FontWeight: fw400, img: "images/quality.png"),
                                  CustomImageButton(onTap:(){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ChallengePage()));
                                  },fontsize: 16, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: Colors.transparent, height: 96, width: 185, text: "Challenges", FontWeight: fw400, img: "images/star.png"),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomImageButton(onTap:(){},fontsize: 16, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: Colors.transparent, height: 96, width: 185, text: "Newsfeed", FontWeight: fw400, img: "images/newspaper.png"),
                                  CustomImageButton(onTap:(){},fontsize: 16, textColor: white, backgroundColor: Color(0xFF00B0FC), borderColor: Colors.transparent, height: 96, width: 185, text: "News portal", FontWeight: fw400, img: "images/promotion.png"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        NewsShow(),


                      ],
                    ),
                  )
              ),
            ],
          ),
        )
      ),
    );
  }
}
