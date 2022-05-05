import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';
import '../home/upNavbar.dart';
import '../../loginForm_/login.dart';
import '../../models/quan.dart';
import '../SearchPage/search_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final adress = listS;
List<quan> Quan;
AppBar upAppBar_ch(context) {
  return AppBar(
    toolbarHeight: 40,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Image.asset(
      "assets/images/logo_coffeehouse.png",
      width: 200,
    ),
    actions: [
      IconButton(
        icon: Image.asset("assets/images/card_navbar.png"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
        },
      )
    ],
  );
}

class Cuahang extends StatefulWidget {
  @override
  CuahangScreen createState() {
    return new CuahangScreen();
  }
}

class CuahangScreen extends State<Cuahang> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(appBar: upAppBar_ch(context), body: buildCuahang());
  }
}

class buildCuahang extends StatefulWidget {
  @override
  BodyCuahang createState() => BodyCuahang();
}

class BodyCuahang extends State<buildCuahang> {
  Completer<GoogleMapController> _controller = Completer();
  final _marker = [];
  final markersMaps = [
    LatLng(10.769245129811727, 106.69449679772794),
    LatLng(10.768503929914624, 106.69892418421875),
    LatLng(10.77141050783972, 106.69146368236737),
    LatLng(10.78566971772667, 106.68180799771105),
    LatLng(10.773259887118597, 106.68716356887505),
    LatLng(10.771286608877475, 106.6810836400391),
    LatLng(10.758988238573139, 106.70071545538279),
    LatLng(10.79661173181342, 106.69088588421889),
    LatLng(10.802642627788867, 106.68380251120328),
    LatLng(10.7946852500766, 106.6808684246957),
  ];

  @override
  Widget build(BuildContext context) {
    context = context;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    for (var i = 0; i < markersMaps.length; i++) {
      _marker.add(Marker(
          markerId: MarkerId(markersMaps[i].toString()),
          position: markersMaps[i],
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueAzure,
          )));
    }
    ;
    void showBottomSheet(int index) async => showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (BuildContext context) => StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) => Container(
                height: height - 40,
                color: Colors.transparent,
                child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    child: Stack(children: [
                      DraggableScrollableSheet(
                          initialChildSize: 1,
                          minChildSize: 0.99,
                          maxChildSize: 1,
                          builder: (context, scrollController) {
                            return SingleChildScrollView(
                                controller: scrollController,
                                child: Column(children: [
                                  Container(
                                    height: 320,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(adress[index].image),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: width,
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border(bottom: BorderSide(width: 0.1, color: Colors.black))),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Opacity(
                                            opacity: 0.7,
                                            child: Text("THE COFFEE HOUSE",
                                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w800))),
                                        Opacity(
                                            opacity: 0.9,
                                            child: Text(adress[index].address,
                                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800))),
                                        Opacity(
                                            opacity: 0.7,
                                            child: Text("Giờ mở cửa: 7:00 - 22:00",
                                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100)))
                                      ],
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top: 10, bottom: 10),
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Container(
                                              color: Colors.white,
                                              padding: EdgeInsets.only(left: 12, right: 12),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      padding: EdgeInsets.only(top: 6, bottom: 6, left: 8, right: 8),
                                                      decoration: BoxDecoration(
                                                          color: Color(0xfff4f4f4),
                                                          borderRadius: BorderRadius.all(Radius.circular(4))),
                                                      child: Center(
                                                        child: Image.asset(
                                                          "assets/images/Maps.png",
                                                          height: 16,
                                                        ),
                                                      )),
                                                  Container(
                                                      padding: EdgeInsets.only(left: 12, right: 12),
                                                      constraints: BoxConstraints(maxWidth: 280),
                                                      child: Text(adress[index].address_full,
                                                          style: TextStyle(fontSize: 14))),
                                                ],
                                              )),
                                          buildDivider(),
                                          Container(
                                              padding: EdgeInsets.only(left: 12, right: 12),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
                                                      decoration: BoxDecoration(
                                                          color: Color(0xfff4f4f4),
                                                          borderRadius: BorderRadius.all(Radius.circular(4))),
                                                      child: Center(
                                                        child: Image.asset(
                                                          "assets/images/Star.png",
                                                          height: 16,
                                                        ),
                                                      )),
                                                  Container(
                                                      padding: EdgeInsets.only(left: 12, right: 12),
                                                      constraints: BoxConstraints(maxWidth: 280),
                                                      child: Text("Thêm vào danh sách yêu thích",
                                                          style: TextStyle(fontSize: 14))),
                                                ],
                                              )),
                                          buildDivider(),
                                          Container(
                                              padding: EdgeInsets.only(left: 12, right: 12),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
                                                      decoration: BoxDecoration(
                                                          color: Color(0xfff4f4f4),
                                                          borderRadius: BorderRadius.all(Radius.circular(4))),
                                                      child: Center(
                                                        child: Image.asset(
                                                          "assets/images/phone.png",
                                                          height: 16,
                                                        ),
                                                      )),
                                                  Container(
                                                      padding: EdgeInsets.only(left: 12, right: 12),
                                                      constraints: BoxConstraints(maxWidth: 280),
                                                      child: Text("Liên hệ", style: TextStyle(fontSize: 14))),
                                                ],
                                              )),
                                          buildDivider(),
                                          Container(
                                              padding: EdgeInsets.only(left: 12, right: 12),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      padding: EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
                                                      decoration: BoxDecoration(
                                                          color: Color(0xfff4f4f4),
                                                          borderRadius: BorderRadius.all(Radius.circular(4))),
                                                      child: Center(
                                                        child: Image.asset(
                                                          "assets/images/Share.png",
                                                          height: 16,
                                                        ),
                                                      )),
                                                  Container(
                                                      padding: EdgeInsets.only(left: 12, right: 12),
                                                      constraints: BoxConstraints(maxWidth: 280),
                                                      child:
                                                          Text("Chia sẻ với bạn bè", style: TextStyle(fontSize: 14))),
                                                ],
                                              )),
                                          buildDivider(),
                                        ],
                                      )),
                                  Container(
                                      height: height / 4,
                                      width: width,
                                      color: Colors.white,
                                      padding: EdgeInsets.only(left: 14, right: 14),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                          child: GoogleMap(
                                              buildingsEnabled: true,
                                              zoomControlsEnabled: true,
                                              mapType: MapType.terrain,
                                              markers: {
                                                _marker[0],
                                                _marker[1],
                                                _marker[2],
                                                _marker[3],
                                                _marker[4],
                                                _marker[5],
                                                _marker[6],
                                                _marker[7],
                                                _marker[8],
                                                _marker[9]
                                              },
                                              initialCameraPosition: CameraPosition(
                                                target: LatLng(adress[index].kinhdo, adress[index].vido),
                                                zoom: 15,
                                              )))),
                                  VerticalSpacing(of: 50)
                                ]));
                          }),
                      Positioned(
                        top: 18,
                        right: 18,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {});
                            Navigator.of(context).pop();
                          },
                          child: Image.asset(
                            "assets/images/close.png",
                            height: 24,
                          ),
                        ),
                      ),
                    ])))));
    GestureDetector buildQuan(int i) {
      return GestureDetector(
          onTap: () => showBottomSheet(i),
          child: Container(
              margin: EdgeInsets.only(top: 4, left: 12, right: 12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Colors.white,
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            child: Image.asset(listS[i].image, fit: BoxFit.fill))),
                    Container(
                        padding: EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("THE COFFEE HOUSE",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff666666),
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.5)),
                            Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                constraints: BoxConstraints(maxWidth: width / 1.7, maxHeight: 52),
                                child: Opacity(
                                    opacity: 0.9,
                                    child: Text(
                                      listS[i].address_full,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 16),
                                    ))),
                            Opacity(
                                opacity: 0.7,
                                child: Text(
                                  "Cách đây " + listS[i].far + " km",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                                ))
                          ],
                        ))
                  ],
                )
              ])));
    }

    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.only(top: 60),
              height: height - 110,
              width: double.infinity,
              child: ListView(
                physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 12, right: 12),
                      height: 40,
                      decoration:
                          BoxDecoration(color: Color(0xffe2e2e2), borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 12),
                                child: Text("CÁC CỬA HÀNG KHÁC",
                                    style: TextStyle(
                                      fontSize: 12,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w800,
                                    )))
                          ])),
                  for (int i = 0; i < listS.length; i++) buildQuan(i),
                  VerticalSpacing(of: 5),
                  VerticalSpacing(of: 50)
                ],
              )),
        ),
        Positioned(
            top: 60,
            child: Container(
                width: width,
                height: 56,
                padding: EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 0.1, color: Colors.black)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => buildsearchScreen()));
                      },
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 12),
                        width: width - 24,
                        decoration:
                            BoxDecoration(color: Color(0xffe2e2e2), borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/search.png",
                              height: 18,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 12),
                                child: Opacity(
                                    opacity: 0.6,
                                    child:
                                        Text("Tìm kiếm", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100))))
                          ],
                        ),
                      ),
                    )
                  ],
                )))
      ],
    );
    ;
  }

  Divider buildDivider() {
    return Divider(
      height: 20,
      color: Color(0xff838383),
      indent: 50,
      endIndent: 20,
    );
  }
}
