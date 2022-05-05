import 'package:flutter/material.dart';
import 'components/index/body.dart';
import '../../size_config.dart';
import '../../bottomNavbar.dart';
import 'upNavbar.dart';
import '../DatMon/datmon_screen.dart';
import '../Cuahang/cuahangscreen.dart';
import '../../uudai/uudai.dart';

class buildHome extends StatefulWidget {
  @override
  HomeScreen createState() {
    return new HomeScreen();
  }
}

int _currentIndex = 0;

class HomeScreen extends State<buildHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double height = 50;
    final tabs = [Body(), BodyDatMon(), buildCuahang(), Body_td()];
    final navbar = [
      upAppBar(context),
      buildNav(),
      upAppBar_ch(context),
      AppBar_td(),
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: navbar[_currentIndex],
          body: tabs[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xffb86d30),
            unselectedItemColor: Color(0xff666666),
            selectedFontSize: 10,
            unselectedFontSize: 10,
            items: [
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  "assets/images/home_icon_active.png",
                  height: 20,
                ),
                icon: Image.asset(
                  "assets/images/home_icon.png",
                  height: 20,
                ),
                label: 'Trang Chủ',
              ),
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  "assets/images/order_icon_acitve.png",
                  height: 20,
                ),
                icon: Image.asset(
                  "assets/images/order_icon.png",
                  height: 20,
                ),
                label: 'Đặt Món',
              ),
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  "assets/images/store_icon_active.png",
                  height: 20,
                  width: 25,
                ),
                icon: Image.asset(
                  "assets/images/store_icon.png",
                  height: 20,
                  width: 25,
                ),
                label: 'Cửa Hàng',
              ),
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  "assets/images/tichdiem_icon_active.png",
                  height: 20,
                  width: 25,
                ),
                icon: Image.asset(
                  "assets/images/tichdiem_icon.png",
                  height: 20,
                  width: 25,
                ),
                label: 'Tích Điểm',
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          )),
    );
  }
}
