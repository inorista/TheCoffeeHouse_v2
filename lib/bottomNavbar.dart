import 'package:flutter/material.dart';

class buildbottomNav extends StatefulWidget {
  const buildbottomNav({
    Key key,
  }) : super(key: key);
  @override
  bottomNav createState() {
    return new bottomNav();
  }
}

class bottomNav extends State<buildbottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          activeIcon: Image.asset("assets/images/order_icon_acitve.png"),
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
          ),
          icon: Image.asset(
            "assets/images/tichdiem_icon.png",
            height: 20,
            width: 25,
          ),
          label: 'Tích Điểm',
        ),
        BottomNavigationBarItem(
          activeIcon: Image.asset(
            "assets/images/more_icon_active.png",
            height: 15,
            width: 25,
          ),
          icon: Image.asset("assets/images/more_icon.png", height: 20, width: 25),
          label: 'Khác',
        ),
      ],
    );
  }
}
