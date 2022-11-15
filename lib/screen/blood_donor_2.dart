import 'package:flutter/material.dart';
import 'package:nabeen/theme.dart';
import 'package:nabeen/widget/app_bar.dart';
import 'package:nabeen/widget/custom_button.dart';
import 'package:nabeen/widget/image_slider.dart';

class BloodDonor2 extends StatelessWidget {
  const BloodDonor2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex:1,
              child: customAppBar()),
          Expanded(flex:9,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  children: [
                    ImageSlider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(onTap: (){}, fontsize: 20, textColor: white, backgroundColor: customSkyBlue, borderColor: transparent, height: 68, width: 166, text: "Donor", FontWeight: fw400),
                          CustomButton(onTap: (){}, fontsize: 15, textColor: white, backgroundColor: customSkyBlue, borderColor: transparent, height: 68, width: 166, text: "BLOOD REQUEST", FontWeight: fw400),
                        ],
                      ),
                    ),
                    CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "A+(POSITIVE)", FontWeight: fw500),
                    SizedBox(height: 15),
                    CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "AB-(NEGATIVE)", FontWeight: fw500),
                    SizedBox(height: 15),
                    CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "O+(POSITIVE)", FontWeight: fw500),
                    SizedBox(height: 15),
                    CustomButton(onTap: (){}, fontsize: 16, textColor: black, backgroundColor: white, borderColor: customSkyBlue, height: 82, width: 233, text: "B-(NEGATIVE)", FontWeight: fw500),

                  ],
                ),
              ))
        ],
      ),
    );
  }
}
