import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class VoluntaryServices extends StatelessWidget {
  const VoluntaryServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(flex:1,child: customAppBar()),
            Expanded(flex:9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ImageSlider(),
                    SizedBox(height: 15),
                    CustomButton(onTap: (){}, fontsize: 18, textColor: white, backgroundColor: customSkyBlue, borderColor: customSkyBlue, height: 95, width: 315, text: "BE A VALUNTEER", FontWeight: fw400),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "BLOOD DONATION", FontWeight: fw500),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Spacer(),
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "EXPERIMENT", FontWeight: fw500),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "INVESTIGATION", FontWeight: fw500),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Spacer(),
                        CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "INFRASTRUCTUR DEVELOPMENT", FontWeight: fw500),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
