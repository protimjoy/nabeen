import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/image_slider.dart';
import 'package:nabeen/widget/profile_header.dart';

import '../model/user_model.dart';
import 'Tab_Pages/tabpage1.dart';
import 'Tab_Pages/tabpage2.dart';
import 'drawer.dart';

class RepresentativeProfile extends StatefulWidget {
   RepresentativeProfile({Key? key}) : super(key: key);

  @override
  State<RepresentativeProfile> createState() => _RepresentativeProfileState();
}

class _RepresentativeProfileState extends State<RepresentativeProfile> with TickerProviderStateMixin {
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
                      ProfileHeader(),
                      Container(
                        height: 65,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: customSkyBlue)
                        ),
                        child: Center(child: Text("DESIGNATION",style: nabeenFontStyle(16, black, fw500),)),
                      ),
                      SizedBox(height: height*.020),
                      Container(
                        height: 65,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: customSkyBlue)
                        ),
                        child: Center(child: Text("Zone",style: nabeenFontStyle(16, black, fw500),)),
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
