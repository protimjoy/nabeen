import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/image_slider.dart';

class ClassRoom extends StatelessWidget {
  const ClassRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(flex: 1, child: customAppBar()),
              Expanded(
                  flex: 9,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ImageSlider(),
                        SizedBox(height: height * 0.020),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("TUTOR PROFILE",
                                  style: nabeenFontStyle(20, black, fw400)),
                              SizedBox(height: height * 0.005),
                              Container(
                                height: 200,
                                child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return Center(
                                        child: Container(
                                            height: 75,
                                            width: 385,
                                            margin: EdgeInsets.only(bottom: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              border: Border.all(
                                                  color: Color(0xFF00B0FC),
                                                  width: 1),
                                            ),
                                            child: Center(
                                              child: ListTile(
                                                leading: CircleAvatar(radius: 30,backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80")),
                                                title: Text("Abdus-salam", style: nabeenFontStyle(20, customBlue, fw300),),
                                                subtitle: Text("Doctor", style: nabeenFontStyle(12, customBlue, fw300),),
                                              ),
                                            )
                                        ),
                                      );
                                    }),
                              ),
                              SizedBox(height: height * 0.020),
                              Text("CLASS ROOM",
                                  style: nabeenFontStyle(20, black, fw400)),
                              SizedBox(height: height * 0.005),
                              Container(
                                height: 166,
                                width: 370,
                                decoration: BoxDecoration(
                                  color: customSkyBlue,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Mathematics", style: nabeenFontStyle(20, white, fw400)),
                                        Text("Chapter 3: Lorei psum", style: nabeenFontStyle(14, white, fw400)),
                                        Row(
                                          children: [
                                            Icon(Icons.watch_later,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("09 : 30", style: nabeenFontStyle(14, white, fw400)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.person,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("Jhon Smith", style: nabeenFontStyle(12, white, fw400)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.video_call,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("Google Meets", style: nabeenFontStyle(12, white, fw400)),
                                          ],
                                        ),

                                      ],
                                    ),
                                    Image.asset("images/math.png")
                                  ],
                                ),
                              ),
                              SizedBox(height: height * 0.015),
                              Container(
                                height: 166,
                                width: 370,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF5C57),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Mathematics", style: nabeenFontStyle(20, white, fw400)),
                                        Text("Chapter 3: Lorei psum", style: nabeenFontStyle(14, white, fw400)),
                                        Row(
                                          children: [
                                            Icon(Icons.watch_later,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("09 : 30", style: nabeenFontStyle(14, white, fw400)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.person,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("Jhon Smith", style: nabeenFontStyle(12, white, fw400)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.video_call,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("Google Meets", style: nabeenFontStyle(12, white, fw400)),
                                          ],
                                        ),

                                      ],
                                    ),
                                    Image.asset("images/math.png")
                                  ],
                                ),
                              ),
                              SizedBox(height: height * 0.015),
                              Container(
                                height: 166,
                                width: 370,
                                decoration: BoxDecoration(
                                    color: customBlue,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Mathematics", style: nabeenFontStyle(20, white, fw400)),
                                        Text("Chapter 3: Lorei psum", style: nabeenFontStyle(14, white, fw400)),
                                        Row(
                                          children: [
                                            Icon(Icons.watch_later,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("09 : 30", style: nabeenFontStyle(14, white, fw400)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.person,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("Jhon Smith", style: nabeenFontStyle(12, white, fw400)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.video_call,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("Google Meets", style: nabeenFontStyle(12, white, fw400)),
                                          ],
                                        ),

                                      ],
                                    ),
                                    Image.asset("images/math.png")
                                  ],
                                ),
                              ),
                              SizedBox(height: height * 0.015),
                              Container(
                                height: 166,
                                width: 370,
                                decoration: BoxDecoration(
                                    color: Color(0xFF058D7F),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Mathematics", style: nabeenFontStyle(20, white, fw400)),
                                        Text("Chapter 3: Lorei psum", style: nabeenFontStyle(14, white, fw400)),
                                        Row(
                                          children: [
                                            Icon(Icons.watch_later,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("09 : 30", style: nabeenFontStyle(14, white, fw400)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.person,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("Jhon Smith", style: nabeenFontStyle(12, white, fw400)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.video_call,color: Colors.white,),
                                            SizedBox(width: 10),
                                            Text("Google Meets", style: nabeenFontStyle(12, white, fw400)),
                                          ],
                                        ),

                                      ],
                                    ),
                                    Image.asset("images/math.png")
                                  ],
                                ),
                              ),
                              SizedBox(height: height * 0.015),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
