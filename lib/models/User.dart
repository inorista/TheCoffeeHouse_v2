import 'package:flutter/material.dart';

class User {
  final String image,title,subtitle;

  User({@required this.image, @required this.title, @required this.subtitle});
}
// demo user
User user1 = User(title: "Tích BEAN dễ dàng - Thăng hạng nhanh hơn", image: "assets/images/bean.png",subtitle: "Mô hình thăng hạng thành viên mới dễ dàng hơn");
User user2 = User(title: "Cửa hàng ưu đãi", image: "assets/images/bean2.png",subtitle: "Thoải mái đổi BEAN để nhận nhiều phần quà cực hấp dẫn!");
User user3 = User(title: "Đặc quyền Kim Cương", image: "assets/images/bean3.png",subtitle: "Tận hưởng các đặc quyền chỉ dành riêng cho thành viên Kim Cương");
