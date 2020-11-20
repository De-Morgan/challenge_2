import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/style/colors.dart';
import 'package:flutter_challenge_2/ui/utils/assets_path.dart';

class HeaderCarousel extends StatefulWidget {
  @override
  _HeaderCarouselState createState() => _HeaderCarouselState();
}

class _HeaderCarouselState extends State<HeaderCarousel> {
  int _current = 0;

  final imgList = <String>[
    AssetsPath.salon,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: MediaQuery.of(context).size.width,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
              // autoPlay: false,
              ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    )),
                  ))
              .toList(),
        ),
        Container(
          decoration: _buildGradientBackground(),
          height: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            bottom: 4.0,
            left: 16.0,
            right: 16.0,
          ),
        ),
        Positioned(
          bottom: 6,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index ? whiteColor : unselectedColor,
                ),
              );
            }).toList(),
          ),
        ),
        Positioned(
            bottom: 12,
            right: 12,
            child: Text(
              "23 Booked",
              style: Theme.of(context).primaryTextTheme.button,
            ))
      ],
    );
  }
}

BoxDecoration _buildGradientBackground() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
      stops: <double>[0.0, 0.5, 0.5],
      colors: <Color>[
        Colors.black,
        Colors.transparent,
        Colors.transparent,
      ],
    ),
  );
}
