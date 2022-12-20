// import 'package:flutter/material.dart';
// import 'package:nabeen/theme.dart';
// import 'package:nabeen/widget/app_bar.dart';
// import 'package:nabeen/widget/custom_button.dart';
// import 'package:nabeen/widget/custom_textfield.dart';
// import 'package:nabeen/widget/profile_header.dart';
// import 'package:nabeen/widget/profile_rounded.dart';
//
// class BloodDonorProfile extends StatelessWidget {
//   BloodDonorProfile({Key? key}) : super(key: key);
//
//   TextEditingController location = TextEditingController();
//   TextEditingController contact = TextEditingController();
//   TextEditingController bloodgroup = TextEditingController();
//   TextEditingController time = TextEditingController();
//   TextEditingController quantity = TextEditingController();
//   TextEditingController description = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     return SafeArea(child: Scaffold(
//       body: Column(
//         children: [
//           Expanded(flex:1,child: customAppBar()),
//           Expanded(flex:9,child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 15.0),
//               child: Column(
//                 children: [
//                   ProfileRounded(),
//                   SizedBox(height: height*0.040),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Text("LOCATION", style: nabeenFontStyle(20, black, fw400)),
//                       ),
//                       CustomTextField(controller: location, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
//                     ],
//                   ),
//                   SizedBox(height: height*0.015),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Text("CONTACT", style: nabeenFontStyle(20, black, fw400)),
//                       ),
//                       CustomTextField(controller: contact, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
//                     ],
//                   ),
//                   SizedBox(height: height*0.015),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Text("BLOOD GROUP", style: nabeenFontStyle(20, black, fw400)),
//                       ),
//                       CustomTextField(controller: bloodgroup, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
//                     ],
//                   ),
//                   SizedBox(height: height*0.015),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Text("TIME", style: nabeenFontStyle(20, black, fw400)),
//                       ),
//                       CustomTextField(controller: time, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
//                     ],
//                   ),
//                   SizedBox(height: height*0.015),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Text("QUANTITY", style: nabeenFontStyle(20, black, fw400)),
//                       ),
//                       CustomTextField(controller: quantity, hintText: "", textColor: black, borderColor: customSkyBlue, fontsize: 25, height: 61, width: 348, FontWeight: fw400)
//                     ],
//                   ),
//                   SizedBox(height: height*0.015),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10.0),
//                         child: Text("DESCRIPTION",style: nabeenFontStyle(20, black, fw400)),
//                       ),
//                       Container(
//                         height: 184,
//                         width: 348,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           border: Border.all(color: customSkyBlue,width: 1),
//                         ),
//                         child: TextField(
//                           style: nabeenFontStyle(20, black, fw400),
//                           maxLines: 6,
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                   borderSide: BorderSide.none
//                               )
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: height*0.040),
//                   CustomButton(onTap: (){}, fontsize: 25, textColor: white, backgroundColor: customSkyBlue, borderColor: transparent, height: 87, width: 204, text: "SUBMIT", FontWeight: fw500)
//                 ],
//               ),
//             ),
//           ))
//         ],
//       ),
//     ));
//   }
// }
