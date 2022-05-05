import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel/loginForm_/login.dart';
import 'package:travel/screens/home/components/index/body.dart';
import '../../models/thucuong.dart';
import '../../size_config.dart';
import '../../bottomNavbar.dart';
import '../home/home_screen.dart';
import '../home/upNavbar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

final List<tratraicay> thucuongs3 = [tra1, tra2, tra3];
final List<daxay> thucuongs4 = [daxay1, daxay2, daxay3];
final List<thucuongphaithu> thucuongs = [thucuong1, thucuong2, thucuong3];
final List<thucuongcaphe> thucuongs2 = [cafe1, cafe2, cafe3];
final List listmon = [thucuongs, thucuongs2, thucuongs3, thucuongs4];
final List category = ["Món phải thử", "Cà phê", "Trà trái cây", 'Đá xay'];
final List<topping> toppings = [topping1, topping2, topping3];
final List<sizing> sizings = [sizing1, sizing2];
final scaffoldKey = GlobalKey<Bodybuild2>();

class buildDatMonScreen extends StatefulWidget {
  @override
  DatMonScreen createState() {
    return new DatMonScreen();
  }
}

class DatMonScreen extends State<buildDatMonScreen> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BodyDatMon(),
    );
  }
}

class BodyDatMon extends StatefulWidget {
  @override
  Bodybuild2 createState() => Bodybuild2();
}

class Bodybuild2 extends State<BodyDatMon> {
  final scrollDirection = Axis.vertical;
  AutoScrollController controllers;
  int radioValue_size = 1;
  int radioValue_topping = -2;
  int _current = 0;
  String menuS = "Thực đơn";
  void initState() {
    super.initState();
    controllers = AutoScrollController(
        viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.top),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    context = context;
    int _current = 0;
    int currentPrice;
    int fixedPrice;
    int soluong;
    int soluong_topping;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Future _scrollToIndex(int index) async {
      await controllers.scrollToIndex(index, preferPosition: AutoScrollPosition.middle);
    }

    void menuShow(context) async => showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (BuildContext context) => StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) => Container(
                  height: MediaQuery.of(context).size.height - 350,
                  color: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            height: 50,
                            color: Colors.white,
                            child: Center(
                                child: Opacity(
                                    opacity: 0.8,
                                    child: Text("Thực đơn",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 20,
                                          letterSpacing: 0.4,
                                        )))),
                          ),
                          Positioned(
                            top: 18,
                            right: 14,
                            child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Image.asset(
                                  "assets/images/close_menu.png",
                                  height: 16,
                                )),
                          )
                        ]),
                        VerticalSpacing(of: 10),
                        Row(
                          children: [
                            Column(
                              children: [
                                for (int i = 0; i < category.length / 2; i++)
                                  GestureDetector(
                                      onTap: () {
                                        _scrollToIndex(i);
                                        setState() {
                                          menuS = category[i].title;
                                        }

                                        ;
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                          height: height / 12,
                                          width: MediaQuery.of(context).size.width / 2.3,
                                          margin: EdgeInsets.only(left: 15, top: 10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                            color: Colors.white,
                                          ),
                                          child: Container(
                                              margin: EdgeInsets.only(left: 8, right: 8),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(right: 10),
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      child: Image.asset(listmon[i][0].image, height: height / 16),
                                                    ),
                                                  ),
                                                  Text(category[i],
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
                                                ],
                                              ))))
                              ],
                            ),
                            Column(
                              children: [
                                for (int i = 2; i < category.length; i++)
                                  GestureDetector(
                                      onTap: () {
                                        _scrollToIndex(i);
                                        setState() {
                                          menuS = category[i].title;
                                        }

                                        ;
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                          height: height / 12,
                                          width: MediaQuery.of(context).size.width / 2.3,
                                          margin: EdgeInsets.only(left: 15, top: 10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                            color: Colors.white,
                                          ),
                                          child: Container(
                                              margin: EdgeInsets.only(left: 8, right: 8),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(right: 10),
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      child: Image.asset(listmon[i][0].image, height: height / 16),
                                                    ),
                                                  ),
                                                  Text(category[i],
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
                                                ],
                                              ))))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )));
    void showBottomSheet(int index, int index2, currentPrice, soluong, fixedPrice, sltopping, toppingPrice) async =>
        showModalBottomSheet(
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
                                  physics: BouncingScrollPhysics(
                                    parent: AlwaysScrollableScrollPhysics(),
                                  ),
                                  controller: scrollController,
                                  child: Column(children: [
                                    Container(
                                      height: getProportionateScreenHeight(450),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(listmon[index][index2].image),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        color: Colors.white,
                                        padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  listmon[index][index2].title,
                                                  style: TextStyle(fontSize: 22),
                                                ),
                                                Opacity(
                                                    opacity: 0.8,
                                                    child: Text(
                                                      listmon[index][index2].gia,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                    ))
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Icon(
                                                      Icons.favorite_border_outlined,
                                                      color: Colors.black,
                                                      size: 20.0,
                                                    )),
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Text("YÊU THÍCH",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 9,
                                                          fontWeight: FontWeight.w800,
                                                        )))
                                              ],
                                            )
                                          ],
                                        )),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border(bottom: BorderSide(color: Colors.grey.shade300, width: 0.5))),
                                        padding: EdgeInsets.all(10),
                                        child: Opacity(
                                          opacity: 0.8,
                                          child: ExpandableText(listmon[index][index2].subtitle,
                                              expandText: 'Xem thêm',
                                              collapseText: 'Rút gọn',
                                              maxLines: 3,
                                              linkColor: Colors.orange,
                                              style: TextStyle(fontSize: 14)),
                                        )),
                                    VerticalSpacing(of: 10),
                                    Container(
                                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Size',
                                                        style: TextStyle(
                                                          letterSpacing: 0.6,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w800,
                                                        )),
                                                    Opacity(
                                                        opacity: 0.6,
                                                        child: Text('Chọn 1 loại size',
                                                            style: TextStyle(
                                                              letterSpacing: 0.1,
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w100,
                                                            )))
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                                    color: Color(0xfff8e5c4),
                                                  ),
                                                  child: Text("BẮT BUỘC",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: Color(0xffcc8648),
                                                        fontWeight: FontWeight.w800,
                                                        letterSpacing: 0.8,
                                                      )),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              height: 3,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffb46e33),
                                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(top: 10),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    for (int i = 0; i < sizings.length; i++)
                                                      Container(
                                                        padding: EdgeInsets.only(top: 7, bottom: 7),
                                                        decoration: BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              width: 0.5,
                                                              color: Colors.grey.shade300,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Transform.scale(
                                                                    scale: 0.8,
                                                                    child: SizedBox(
                                                                      height: 18.0,
                                                                      width: 18.0,
                                                                      child: Radio(
                                                                        value: i + 1,
                                                                        groupValue: radioValue_size,
                                                                        activeColor: Color(0xffbc6b2a),
                                                                        onChanged: (val) {
                                                                          setState(() {
                                                                            if (val == 2) {
                                                                              currentPrice += 5000;
                                                                            } else if (val == 1) {
                                                                              currentPrice -= 5000;
                                                                            }
                                                                            radioValue_size = val;
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Opacity(
                                                                      opacity: 0.7,
                                                                      child: Text("   " + sizings[i].title,
                                                                          style: TextStyle(
                                                                            fontSize: 16,
                                                                          )))
                                                                ],
                                                              ),
                                                              Opacity(
                                                                opacity: 0.7,
                                                                child: Text(
                                                                  sizings[i].gia,
                                                                  style: TextStyle(fontSize: 16),
                                                                ),
                                                              )
                                                            ]),
                                                      ),
                                                  ],
                                                )),
                                          ],
                                        )),
                                    VerticalSpacing(of: 10),
                                    Container(
                                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Topping',
                                                        style: TextStyle(
                                                          letterSpacing: 0.6,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w800,
                                                        )),
                                                    Opacity(
                                                        opacity: 0.6,
                                                        child: Text('Chọn tối đa 2 loại',
                                                            style: TextStyle(
                                                              letterSpacing: 0.1,
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w100,
                                                            )))
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                                    color: Color(0xffe2e2e2),
                                                  ),
                                                  child: Text("TÙY CHỌN",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: Color(0xff666666),
                                                        fontWeight: FontWeight.w800,
                                                        letterSpacing: 0.8,
                                                      )),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              height: 3,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffb46e33),
                                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(top: 10),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    for (int i = 0; i < toppings.length; i++)
                                                      Container(
                                                        padding: EdgeInsets.only(top: 7, bottom: 7),
                                                        decoration: BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              width: 0.5,
                                                              color: Colors.grey.shade300,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Transform.scale(
                                                                    scale: 0.8,
                                                                    child: SizedBox(
                                                                      height: 18.0,
                                                                      width: 18.0,
                                                                      child: Radio(
                                                                        value: i + 1,
                                                                        groupValue: radioValue_topping,
                                                                        activeColor: Color(0xffbc6b2a),
                                                                        onChanged: (val) {
                                                                          setState(() {
                                                                            sltopping += 1;
                                                                            if (sltopping <= 1) {
                                                                              currentPrice += sltopping * toppingPrice;
                                                                            }
                                                                            radioValue_topping = val;
                                                                          });
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Opacity(
                                                                      opacity: 0.7,
                                                                      child: Text("   " + toppings[i].title,
                                                                          style: TextStyle(
                                                                            fontSize: 16,
                                                                          )))
                                                                ],
                                                              ),
                                                              Opacity(
                                                                opacity: 0.7,
                                                                child: Text(toppings[i].gia,
                                                                    style: TextStyle(fontSize: 16)),
                                                              )
                                                            ]),
                                                      ),
                                                  ],
                                                )),
                                          ],
                                        )),
                                    VerticalSpacing(of: 160)
                                  ]));
                            },
                          ),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                  padding: EdgeInsets.only(top: 10),
                                  height: 100,
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                      top: BorderSide(
                                        width: 0.5,
                                        color: Colors.grey.shade300,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if (soluong > 1) {
                                                    soluong = soluong - 1;
                                                    currentPrice -= fixedPrice;
                                                  }
                                                });
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(right: 14),
                                                height: 28,
                                                width: 28,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                                  border: Border.all(width: 0.3, color: Color(0xff666666)),
                                                ),
                                                child: Center(
                                                  child: Image.asset("assets/images/decrease.png", width: 12),
                                                ),
                                              ),
                                            ),
                                            Text(soluong.toString(),
                                                style: TextStyle(
                                                  fontSize: 16,
                                                )),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if (soluong >= 1) {
                                                    soluong = soluong + 1;
                                                    currentPrice = fixedPrice * soluong;
                                                  }
                                                });
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(left: 14),
                                                height: 28,
                                                width: 28,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                                  border: Border.all(width: 0.3, color: Color(0xff666666)),
                                                ),
                                                child: Center(
                                                  child: Image.asset("assets/images/increase.png", width: 12),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height: 44,
                                          margin: EdgeInsets.only(right: 10, left: 10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              stops: [0.1, 0.3, 0.6, 1],
                                              colors: [
                                                Color(0xff694729),
                                                Color(0xffb17846),
                                                Color(0xffb17846),
                                                Color(0xff694729),
                                              ],
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              (() {
                                                String tamtinh = currentPrice.toString();
                                                if (tamtinh.length == 5) {
                                                  tamtinh = tamtinh.substring(0, 2) + "." + tamtinh.substring(2, 5);
                                                } else if (tamtinh.length == 6) {
                                                  tamtinh = tamtinh.substring(0, 3) + "." + tamtinh.substring(3, 6);
                                                }
                                                return "Chọn món - " + tamtinh + "đ";
                                              })(),
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ))
                                    ],
                                  ))),
                          Positioned(
                            top: 18,
                            right: 18,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  radioValue_topping = -2;
                                  radioValue_size = 1;
                                });
                                Navigator.of(context).pop();
                              },
                              child: Image.asset(
                                "assets/images/close.png",
                                height: 24,
                              ),
                            ),
                          ),
                        ])))));
    return SingleChildScrollView(
        child: Stack(children: [
      Container(
          margin: EdgeInsets.only(top: 80),
          height: height - 130,
          width: double.infinity,
          child: ListView(
              physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              scrollDirection: scrollDirection,
              controller: controllers,
              children: [
                for (int index = 0; index < category.length; index++)
                  AutoScrollTag(
                      key: ValueKey(index),
                      controller: controllers,
                      index: index,
                      child: Container(
                          height: 440,
                          width: double.infinity,
                          padding: EdgeInsets.only(bottom: 20, left: 12, right: 12),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(category[index],
                                style: TextStyle(
                                  letterSpacing: 0.1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                )),
                            ...List.generate(listmon[index].length, (index2) {
                              return Slidable(
                                actionPane: SlidableDrawerActionPane(),
                                actionExtentRatio: 0.2,
                                child: GestureDetector(
                                  onTap: () => showBottomSheet(
                                    index,
                                    index2,
                                    listmon[index][index2].price,
                                    1,
                                    listmon[index][index2].price,
                                    0,
                                    10000,
                                  ),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                        color: Colors.white,
                                      ),
                                      margin: EdgeInsets.only(top: 18),
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Container(
                                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(listmon[index][index2].title,
                                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                                                Opacity(
                                                  opacity: 0.6,
                                                  child: Container(
                                                    constraints: BoxConstraints(maxWidth: width / 1.6),
                                                    child: Text(
                                                      listmon[index][index2].subtitle,
                                                      style: TextStyle(fontSize: 14),
                                                      maxLines: 2,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    padding: EdgeInsets.only(top: 8),
                                                    child: Opacity(
                                                      opacity: 0.8,
                                                      child: Text(listmon[index][index2].gia,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w400,
                                                          )),
                                                    ))
                                              ],
                                            ),
                                            ClipRRect(
                                                borderRadius: BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  listmon[index][index2].image,
                                                  height: 90,
                                                ))
                                          ],
                                        ),
                                      )),
                                ),
                                secondaryActions: <Widget>[
                                  Container(
                                      height: 65,
                                      margin: EdgeInsets.only(top: 30, left: 15),
                                      decoration: BoxDecoration(
                                        color: Color(0xffeaab43),
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Icon(
                                                Icons.favorite_border_outlined,
                                                color: Colors.white,
                                                size: 22.0,
                                              ),
                                            ),
                                            Text("YÊU THÍCH",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w800,
                                                ))
                                          ]))
                                ],
                              );
                            })
                          ]))),
              ])),
      Positioned(
          top: 70,
          child: Container(
              height: 64,
              width: width,
              padding: EdgeInsets.only(top: 14, bottom: 10, left: 12, right: 12),
              decoration: BoxDecoration(color: Color(0xfff4f4f4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        menuShow(context);
                      });
                    },
                    child: Container(
                      height: 45,
                      width: width / 1.6,
                      decoration:
                          BoxDecoration(color: Color(0xffe2e2e2), borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Opacity(
                                opacity: 0.7,
                                child: Text(menuS, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100))),
                            Opacity(opacity: 0.6, child: Text(">")),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      width: 45,
                      height: 45,
                      decoration:
                          BoxDecoration(color: Color(0xffe2e2e2), borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Center(
                        child: Image.asset(
                          "assets/images/search.png",
                          height: 14,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration:
                          BoxDecoration(color: Color(0xffe2e2e2), borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Center(
                        child: Image.asset(
                          "assets/images/fav.png",
                          height: 14,
                        ),
                      ),
                    ),
                  )
                ],
              )))
    ]));
  }

  Container buildMon(int index1, int index2) {
    return Container(
        margin: EdgeInsets.only(top: 18),
        child: Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(3)), color: Colors.white),
            child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              listmon[index1][index2].title,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Container(
                              constraints: BoxConstraints(maxWidth: 220),
                              child: Opacity(
                                opacity: 0.7,
                                child: Text(
                                  listmon[index1][index2].subtitle,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 11.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              listmon[index1][index2].gia,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        listmon[index1][index2].image,
                        height: 80,
                        width: 80,
                      ),
                    )
                  ],
                ))));
  }
}

class buildNav extends StatelessWidget implements PreferredSizeWidget {
  const buildNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.only(top: 28, left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset("assets/images/deli.png"),
                  onPressed: () {},
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Giao đến",
                          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700)),
                    ),
                    Opacity(
                        opacity: 0.5,
                        child: Container(
                            constraints: BoxConstraints(maxWidth: width / 1.2),
                            child: Text("518/2/18 Lê Văn Sỹ Phường 11, Quận Phú Nhuận, TPHCM",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                )))),
                  ],
                ),
              ],
            )));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
