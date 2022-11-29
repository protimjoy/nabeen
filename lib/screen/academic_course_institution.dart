import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class AcademicCourseInstitution extends StatelessWidget {
  const AcademicCourseInstitution({Key? key}) : super(key: key);

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
                              Text("BLOOD DONAR",
                                  style: nabeenFontStyle(20, black, fw400)),
                              SizedBox(height: height * 0.005),
                              Container(
                                height: 180,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Stack(
                                        children: [
                                          Center(
                                            child: Container(
                                              height: 139,
                                              width: 139,
                                              margin: EdgeInsets.only(right: 15),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(23),
                                                border: Border.all(
                                                    color: Color(0xFF00B0FC),
                                                    width: 1),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text("Jhon Smith",
                                                      style: nabeenFontStyle(
                                                          15, black, fw500)),
                                                  SizedBox(height: 10),
                                                  Text("CATEGORY",
                                                      style: nabeenFontStyle(
                                                          15, black, fw300)),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            child: Image.asset("images/home.png"),
                                            left: 30,
                                            right: 50,
                                            top: -12,
                                          )
                                        ],
                                      );
                                    }),
                              ),
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
