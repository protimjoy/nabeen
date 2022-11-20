import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nabeen/screen/voluntary_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        //iconTheme: IconThemeData(
      //
      // ),
        // textTheme: TextTheme(
        //
        //   headline1:   GoogleFonts.poppins(
        //       fontSize: 20, color: Colors.red, fontWeight: FontWeight.w600)
        //
        // )
      ),
      home: VoluntaryServices(),
    );
  }
}