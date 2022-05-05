import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';

class boxevent extends StatelessWidget {
  const boxevent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: -0.5,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              width: width / 2 - 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Image.asset(
                      'assets/images/giaohang.png',
                      height: getProportionateScreenWidth(35),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 14, top: 10),
                    child: Text("Giao tận nơi",
                        style: TextStyle(
                            fontFamily: "OpenSans_Bold",
                            fontWeight: FontWeight.w700,
                            fontSize: 14)),
                  ),
                ],
              ),
              padding: EdgeInsets.only(top: 12, bottom: 12),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: -0.5,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              width: width / 2 - 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Image.asset(
                      'assets/images/tudenlay.png',
                      height: getProportionateScreenWidth(35),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 14, top: 10),
                    child: Text("Tự đến lấy",
                        style: TextStyle(
                            fontFamily: "OpenSans_Bold",
                            fontWeight: FontWeight.w700,
                            fontSize: 14)),
                  )
                ],
              ),
              padding: EdgeInsets.only(top: 12, bottom: 12),
            )
          ],
        ));
  }
}
