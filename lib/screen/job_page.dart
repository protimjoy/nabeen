import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class JobPage extends StatelessWidget {
  const JobPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(flex:1,
                child: customAppBar()),
            Expanded(flex:9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ImageSlider(),
                        SizedBox(height: 15),
                        CustomButton(onTap: (){}, fontsize: 15, textColor: white, backgroundColor: customSkyBlue, borderColor: transparent, height: 95, width: 315, text: "REGISTER AS AN EXPERT", FontWeight: fw400),
                        SizedBox(height: 15),
                        CustomButton(onTap: (){}, fontsize: 20, textColor: white, backgroundColor: customSkyBlue, borderColor: transparent, height: 95, width: 315, text: "APPLY NOW", FontWeight: fw400),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "EMIGRATION", FontWeight: fw500),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Spacer(),
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "PART TIME JOB", FontWeight: fw500),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "MILLS & INDUSTRY", FontWeight: fw500),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Spacer(),
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "CORPORATE", FontWeight: fw500),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "FREELANCING", FontWeight: fw500),
                            Spacer()
                          ],
                        ),

                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
