import 'package:flutter/material.dart';
import 'package:nabeen/screen/aid_service.dart';
import 'package:nabeen/screen/challenge/challenge_page.dart';
import 'package:nabeen/screen/govt_representative/gov_represent.dart';
import 'package:nabeen/screen/level_page.dart';
import 'package:nabeen/screen/vision/vision_page.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/screen/news_portal_page.dart';
import 'package:nabeen/screen/newsfeed_page.dart';
import 'package:nabeen/screen/paid_service.dart';
import 'package:nabeen/screen/sdg/sdg_page.dart';
import 'package:nabeen/screen/voluntary_services.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:marquee/marquee.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/custom_img_button.dart';
import 'package:nabeen/widget/news_show.dart';
import 'package:nabeen/widget/image_slider.dart';

import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _cat = [
    ['AID\nSERVICES', AidService()],
    ['PAID\nSERVICES', PaidService()],
    ['VOLUNTARY\nSERVICES', VoluntaryServices()]
  ];
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          key: _globalKey,
          drawer: MyDrawer(),
          body: Container(
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: customAppBar(
                      onTap: () {
                        _globalKey.currentState!.openDrawer();
                      },
                    )),
                Expanded(
                    flex: 8,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: SizedBox(
                              height: 30,
                              child: Marquee(
                                  text:
                                      "This is a dummy news (1) || This is a dummy news (2) || ",
                                  style: nabeenFontStyle(16, black, fw400)),
                            ),
                          ),
                          SizedBox(height: 10),
                          ImageSlider(),
                          SizedBox(height: 15),
                          CustomButton(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => SDGPage()));
                              },
                              fontsize: 14,
                              textColor: white,
                              backgroundColor: customBlue,
                              borderColor: transparent,
                              height: 65,
                              width: 300,
                              text: "SUSTAINABLE\nDEVELEPMENT GOALS",
                              FontWeight: fw400),
                          SizedBox(height: 8),
                          CustomButton(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => VisionPage()));
                              },
                              fontsize: 14,
                              textColor: white,
                              backgroundColor: customBlue,
                              borderColor: transparent,
                              height: 65,
                              width: 270,
                              text: "VISION 2041",
                              FontWeight: fw400),
                          SizedBox(height: 8),
                          CustomButton(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => GovRepresent()));
                              },
                              fontsize: 14,
                              textColor: white,
                              backgroundColor: customBlue,
                              borderColor: transparent,
                              height: 65,
                              width: 240,
                              text: "GOVERNMENT\nREPRESANTATIVES",
                              FontWeight: fw400),
                          SizedBox(height: 8),
                          CustomButton(
                              onTap: () {},
                              fontsize: 14,
                              textColor: white,
                              backgroundColor: customBlue,
                              borderColor: transparent,
                              height: 65,
                              width: 210,
                              text: "TAKE A TEST",
                              FontWeight: fw400),
                          SizedBox(height: 20),
                          //ListView.builder
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              height: height * 0.10,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _cat.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    _cat[index][1]));
                                      },
                                      child: Container(
                                        width: 130,
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: Color(0xFF00B0FC),
                                              width: 2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0),
                                          child: Center(
                                              child: Text(
                                            _cat[index][0],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0xFF2f2f2f),
                                                fontSize: 14),
                                          )),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(height: 20),
                          //custom image button
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomImageButton(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) => LevelPage()));
                                        },
                                        fontsize: 16,
                                        textColor: white,
                                        backgroundColor: Color(0xFF00B0FC),
                                        borderColor: Colors.transparent,
                                        height: 80,
                                        width: 160,
                                        text: "Level",
                                        FontWeight: fw400,
                                        img: "images/quality.png"),
                                    CustomImageButton(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      ChallengePage()));
                                        },
                                        fontsize: 16,
                                        textColor: white,
                                        backgroundColor: Color(0xFF00B0FC),
                                        borderColor: Colors.transparent,
                                        height: 80,
                                        width: 160,
                                        text: "Challenges",
                                        FontWeight: fw400,
                                        img: "images/star.png"),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomImageButton(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      NewsfeedPage()));
                                        },
                                        fontsize: 16,
                                        textColor: white,
                                        backgroundColor: Color(0xFF00B0FC),
                                        borderColor: Colors.transparent,
                                        height: 80,
                                        width: 160,
                                        text: "Newsfeed",
                                        FontWeight: fw400,
                                        img: "images/newspaper.png"),
                                    CustomImageButton(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      NewsPortalPage()));
                                        },
                                        fontsize: 16,
                                        textColor: white,
                                        backgroundColor: Color(0xFF00B0FC),
                                        borderColor: Colors.transparent,
                                        height: 80,
                                        width: 160,
                                        text: "News portal",
                                        FontWeight: fw400,
                                        img: "images/promotion.png"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          NewsShow(),
                        ],
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}
