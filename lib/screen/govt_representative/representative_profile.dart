import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:nabeen/widget/profile_header.dart';

import '../../model/user_model.dart';
import '../Tab_Pages/tabpage1.dart';
import '../Tab_Pages/tabpage2.dart';
import '../drawer.dart';

class RepresentativeProfile extends StatefulWidget {

  RepresentativeProfile({Key? key,required this.profileData}) : super(key: key);
  int profileData;
  @override
  State<RepresentativeProfile> createState() => _RepresentativeProfileState();
}

class _RepresentativeProfileState extends State<RepresentativeProfile> with TickerProviderStateMixin {
  final userData = UserModel.users();

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _globalKey,
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex:1,
                child: customAppBar(
                  onTap: () {
                    _globalKey.currentState!.openDrawer();
                  },
                )),
            Expanded(flex:9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 260,
                        decoration: BoxDecoration(
                            color: Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.circular(60)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("images/verified.png"),
                            Text("${userData[widget.profileData].name}",style: nabeenFontStyle(20, Color(0xFF241352), fw600)),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",textAlign: TextAlign.center, style: nabeenFontStyle(14, Color(0xFF241352), fw300),),
                      ),
                      SizedBox(height: 15),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("${userData[widget.profileData].img}"),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 65,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: customSkyBlue)
                        ),
                        child: Center(child: Text("${userData[widget.profileData].designation}",style: nabeenFontStyle(16, black, fw500),)),
                      ),
                      SizedBox(height: height*.020),
                      Container(
                        height: 65,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: customSkyBlue)
                        ),
                        child: Center(child: Text("${userData[widget.profileData].zone}",style: nabeenFontStyle(16, black, fw500),)),
                      ),
                      SizedBox(height: height*.025),
                      ImageSlider(),
                      SizedBox(height: height*.020),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                              controller: _tabController,
                              isScrollable: true,
                              indicatorColor: customBlue,
                              labelColor: customBlue,
                              unselectedLabelColor: Colors.grey,
                              tabs:[
                                Tab(text: "All"),
                                Tab(text: "Social"),
                                Tab(text: "Political"),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          width: double.maxFinite,
                          height: 300,
                          child: TabBarView(
                              controller: _tabController,
                              children: [
                                TabPage1(),
                                TabPage2(),
                                TabPage1(),
                          ]),
                        ),
                      )
                    ],
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
