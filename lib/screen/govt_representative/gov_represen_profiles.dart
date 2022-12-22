import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabeen/screen/govt_representative/representative_profile.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/image_slider.dart';
import '../../model/user_model.dart';
import '../../widget/app_bar.dart';
import '../../widget/zone_dropdown.dart';
import '../drawer.dart';

class GovRepresentativeProfilesZone1 extends StatefulWidget {
   GovRepresentativeProfilesZone1({Key? key}) : super(key: key);

  @override
  State<GovRepresentativeProfilesZone1> createState() => _GovRepresentativeProfilesZone1State();
}

class _GovRepresentativeProfilesZone1State extends State<GovRepresentativeProfilesZone1> {
   final userData = UserModel.users();
   int indexvalu=0;
   TextEditingController searchprofile = TextEditingController();

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: MyDrawer(),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: customAppBar(
                  onTap: () {
                    _globalKey.currentState!.openDrawer();
                  },
                )),
            Expanded(flex:9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ImageSlider(),
                      SizedBox(height: height*0.010),
                      ZoneDropdown(),
                      SizedBox(height: height*0.025),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          controller: searchprofile,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                      color: customBlue,
                                      width: 1.0
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                      color: customBlue,
                                      width: 1.0
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                      color: customBlue,
                                      width: 1.0
                                  )
                              ),
                              hintText: 'search politician',
                              prefixIcon: Icon(Icons.search),
                              hintStyle: GoogleFonts.poppins(textStyle: TextStyle(color:Color(0xFF241352), fontSize:18, fontWeight: fw300))
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.025),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: userData.length,
                            itemBuilder: (context, index) {
                              var user = userData[index];
                              return GestureDetector(
                                onTap: (){
                                  setState((){
                                    indexvalu=index;
                                  });
                                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>RepresentativeProfile(profileData: indexvalu)));
                                },
                                child: Card(
                                  color: Color(0xFFF9F9F9),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundImage: AssetImage("${user.img}"),
                                        ),
                                        SizedBox(width: width*0.05),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("${user.name}", style: nabeenFontStyle(18, customBlue, fw400)),
                                            Text("${user.designation}", style: nabeenFontStyle(16, customBlue, fw300)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  // child: ListTile(
                                  //   title: Text("${user.name}"),
                                  //   subtitle:Text("${user.status}"),
                                  // ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
