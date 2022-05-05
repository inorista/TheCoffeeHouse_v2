import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
];

class Carousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return buildcarousel();
  }
}

class buildcarousel extends State<Carousel> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: CarouselSlider(
            options: CarouselOptions(
                height: 260,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayInterval: Duration(seconds: 2),
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 500),
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
                        fit: BoxFit.fill,
                        height: height / 2,
                      )),
                    ))
                .toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 6.0,
              height: 6.0,
              margin: EdgeInsets.only(top: 240, left: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(233, 233, 231, 0.9)
                    : Color.fromRGBO(180, 180, 178, 0.9),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
