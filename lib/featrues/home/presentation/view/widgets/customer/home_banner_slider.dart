import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeBannerSlider extends StatelessWidget {
  const HomeBannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'assets/images/banner1.png',
      'assets/images/banner2.png',
      'assets/images/banner3.png',
    ];
    return CarouselSlider(
      items: items.map((image) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(image, width: double.infinity),
        );
      }).toList(),
      options: CarouselOptions(
        height: 180.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        viewportFraction: 1,
        aspectRatio: 16 / 9,
      ),
    );
  }
}
