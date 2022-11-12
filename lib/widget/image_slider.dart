import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({
    Key? key,
  }) : super(key: key);
  final ImageUrl = [
    "images/slider1.png",
    "images/slider2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 120.0,
          autoPlay: true,
          aspectRatio: 4.0,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,

        ),
        itemCount: ImageUrl.length,
        itemBuilder: (context, index, realIndex) {
          final sliderImage = ImageUrl[index];
          return imgSlider(sliderImage, context);
        },
      ),
    );
  }

  imgSlider(sliderImage, context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
            //boxShadow: [BoxShadow(blurRadius: 5.0, color: Color(0xFF00B0FC))],
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Color(0xFF00B0FC),
              width: 5,
            )
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            child: Image.asset(
              sliderImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}