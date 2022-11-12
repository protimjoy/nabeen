import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';

class customAppBar extends StatefulWidget {
  const customAppBar({Key? key,this.onTap}) : super(key: key);
  final VoidCallback ?onTap;

  @override
  State<customAppBar> createState() => _customAppBarState();
}

class _customAppBarState extends State<customAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: widget.onTap, icon: Icon(Icons.menu)),
                        SizedBox(width: 30),
                        Image.asset("images/logo.png"),
                      ],
                    ),
                    Row(
                        children: [
                          Icon(Icons.person_add_alt_1,size: 35),
                          SizedBox(width: 10),
                          Stack(children: [
                            Icon(Icons.favorite,size: 35),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFF5C57),
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Center(child: Text("21",style: nabeenFontStyle(10, white, fw500)))),
                            )]
                          ),
                          SizedBox(width: 10),
                          Stack(children: [
                            Icon(Icons.message,size: 35),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFF5C57),
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Center(child: Text("21",style: nabeenFontStyle(10, white, fw500)))),
                            )]
                          ),
                        ]
                    ),
                  ],
                )
            ),
          )
      ),
    );
  }
}
