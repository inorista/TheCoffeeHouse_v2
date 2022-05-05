import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class quan {
  final String image, address_full, address, far, ad_eng;
  final int locate;
  final double vido, kinhdo;

  quan({
    @required this.image,
    @required this.address_full,
    @required this.address,
    @required this.ad_eng,
    @required this.far,
    @required this.locate,
    @required this.kinhdo,
    @required this.vido,
  });
}

quan quan1_1 = quan(
    address: "159 Phạm Ngũ Lão",
    address_full: "159 Phạm Ngũ Lão, Quận 1, Hồ Chí Minh, Việt Nam",
    far: "11.74",
    image: "assets/images/quan1_1.png",
    locate: 1,
    ad_eng: "159 Pham Ngu Lao, Quan 1",
    kinhdo: 10.769245129811727,
    vido: 106.69449679772794);
quan quan1_2 = quan(
  address: "141 Nguyễn Thái Bình",
  address_full: "141 Nguyễn Thái Bình, Quận 1, Hồ Chí Minh, Việt Nam",
  far: "11.69",
  image: "assets/images/quan1_2.png",
  locate: 1,
  ad_eng: "141 Nguyen Thai Binh, Quan 1",
  kinhdo: 10.768503929914624,
  vido: 106.69892418421875,
);
quan quan1_3 = quan(
    address: "47-49 Lê Thị Riêng",
    address_full: "47-49 Lê Thị Riêng, Quận 1, Hồ Chí Minh, Việt Nam",
    far: "11.63",
    image: "assets/images/quan1_3.png",
    locate: 1,
    ad_eng: "47-49 Le Thi Rieng, Quan 1",
    kinhdo: 10.77141050783972,
    vido: 106.69146368236737);
quan quan3_1 = quan(
  address: "183F Trần Quốc Thảo",
  address_full: "183F Trần Quốc Thảo, Quận 3, Hồ Chí Minh, Việt Nam",
  far: "10.63",
  image: "assets/images/quan3_1.png",
  locate: 3,
  ad_eng: "183F Tran Quoc Thao, Quan 3",
  kinhdo: 10.78566971772667,
  vido: 106.68180799771105,
);
quan quan3_2 = quan(
    address: "223 Võ Văn Tần",
    address_full: "223 Võ Văn Tần, Quận 3, Hồ Chí Minh, Việt Nam",
    far: "8.41",
    image: "assets/images/quan3_2.png",
    locate: 3,
    ad_eng: "223 Vo Van Tan, Quan 3",
    kinhdo: 10.773259887118597,
    vido: 106.68716356887505);
quan quan3_3 = quan(
    address: "86 Cao Thắng",
    address_full: "86 Cao Thắng, Quận 3, Hồ Chí Minh, Việt Nam",
    far: "9.12",
    image: "assets/images/quan3_3.png",
    locate: 3,
    ad_eng: "86 Cao Thang, Quan 3",
    kinhdo: 10.771286608877475,
    vido: 106.6810836400391);
quan quan4_1 = quan(
    address: "35-37 Đuờng 41",
    address_full: "35-37 Đuờng 41, Quận 4, Hồ Chí Minh, Việt Nam",
    far: "14.72",
    image: "assets/images/quan4_1.png",
    locate: 4,
    ad_eng: "35-37 Duong 41, Quan 4",
    kinhdo: 10.758988238573139,
    vido: 106.70071545538279);
quan quan9_1 = quan(
    address: "43 Hoa Hồng",
    address_full: "43 Hoa Hồng, Quận Phú Nhuận, Hồ Chí Minh, Việt Nam",
    far: "9.09",
    image: "assets/images/quanpn_1.png",
    locate: 9,
    ad_eng: "43 Hoa Hong, Quan Phu Nhuan",
    kinhdo: 10.79661173181342,
    vido: 106.69088588421889);
quan quan9_2 = quan(
    address: "141 Phan Đăng Lưu",
    address_full: "141 Phan Đăng Lưu, Quận Phú Nhuận, Hồ Chí Minh, Việt Nam",
    far: "8.89",
    image: "assets/images/quanpn_2.png",
    locate: 9,
    ad_eng: "141 Phan Dang Luu, Quan Phu Nhuan",
    kinhdo: 10.802642627788867,
    vido: 106.68380251120328);
quan quan9_3 = quan(
    address: "68 Huỳnh Văn Bánh",
    address_full: "68 Huỳnh Văn Bánh, Quận Phú Nhuận, Hồ Chí Minh, Việt Nam",
    far: "9.89",
    image: "assets/images/quanpn_3.png",
    locate: 9,
    ad_eng: "68 Huynh Van Banh, Quan Phu Nhuan",
    kinhdo: 10.7946852500766,
    vido: 106.6808684246957);
final listS = <quan>[
  quan1_1,
  quan1_2,
  quan1_3,
  quan3_1,
  quan3_2,
  quan3_3,
  quan4_1,
  quan9_1,
  quan9_2,
  quan9_3
];
