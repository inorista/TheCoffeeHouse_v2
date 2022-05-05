import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';
import '../../components/index/home_header.dart';
import 'box_event.dart';
import '../../components/index/box_tichdiem.dart';
import 'package:travel/models/User.dart';
import 'main_title.dart';
import '../../../../loginForm_/login.dart';

final List<String> imgList = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
];
final List<User> users = [user1, user2, user3];

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Bodybuild();
  }
}

class Bodybuild extends State<Body> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          boxevent(),
          VerticalSpacing(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              box_tichdiem(),
              VerticalSpacing(),
              Container(
                width: getProportionateScreenWidth(380),
                padding: EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    main_title(),
                    ...List.generate(users.length, (index) {
                      return buildEvent(index);
                    }),
                    VerticalSpacing(of: 35),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.2, color: Color(0xffb86d30)),
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                        padding: EdgeInsets.only(bottom: 4, top: 4, left: 10, right: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                          },
                          child: Text("Đăng ký thành viên",
                              style: TextStyle(
                                fontFamily: "OpenSans_Bold",
                                color: Color(0xffb86d30),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )),
                        ))
                  ],
                ),
              ),
            ],
          ),
          VerticalSpacing(of: 50),
        ],
      ),
    );
  }

  Column buildEvent(int index) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 30),
          child: Image.asset(
            users[index].image,
            height: getProportionateScreenWidth(150),
            width: getProportionateScreenWidth(150),
          ),
        ),
        Container(
            constraints: BoxConstraints(maxWidth: getProportionateScreenWidth(340)),
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Text(
                  users[index].title,
                  style: TextStyle(
                    fontFamily: "OpenSans_Bold",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VerticalSpacing(of: 5),
                Text(
                  users[index].subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
