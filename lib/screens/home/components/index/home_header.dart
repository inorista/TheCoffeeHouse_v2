import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';
import '../index/carousel.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        height: 360,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.3, 0.6, 0.8, 1],
            colors: [
              Colors.black,
              Colors.brown.shade800,
              Colors.orange.shade800.withOpacity(0.7),
              Colors.orange.shade400.withOpacity(0.8),
              Color(0xfff4f4f4),
            ],
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 0.1),
          child: ClipRRect(
            child: Container(
              color: Colors.orange.shade50.withOpacity(0.1),
            ),
          ),
        ),
      ),
      Positioned(
        top: 80,
        right: 0,
        child: Container(
          padding: EdgeInsets.only(left: 12, right: 12),
          width: width,
          height: height,
          child: Carousel(),
        ),
      ),
    ]);
  }
}
