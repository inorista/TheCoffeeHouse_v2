import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';

class login extends StatefulWidget {
  @override
  loginScreen createState() {
    return new loginScreen();
  }
}

class loginScreen extends State<login> {
  bool ChangeColor = false;
  bool borderColor = false;
  double opacity = 0;
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: new SafeArea(
            child: Container(
          height: height,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  child: Container(
                    height: height / 2.8,
                    width: width,
                    child: Image.asset("assets/images/background3.png",
                        fit: BoxFit.fill),
                  )),
              Positioned(
                  top: 20,
                  right: 16,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:
                          Image.asset("assets/images/close.png", height: 22))),
              Positioned(
                bottom: 0,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).unfocus();
                      });
                    },
                    child: Container(
                      height: height - (height / 2.7),
                      width: width,
                      padding: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Opacity(
                              opacity: 0.9,
                              child: Text("Chào mừng bạn đến với",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100))),
                          VerticalSpacing(of: 5),
                          Image.asset("assets/images/logo_coffeehouse.png",
                              height: 38),
                          VerticalSpacing(of: 30),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 450),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            height: height / 22,
                            width: width - 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: borderColor
                                        ? Color(0xff707070)
                                        : Color(0xffe3e3e3)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 50,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/vietnam.png',
                                              width: 12),
                                          Text(" +84",
                                              style: TextStyle(fontSize: 14))
                                        ],
                                      )),
                                  Container(
                                    height: 16,
                                    width: 14,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                width: 1,
                                                color: Color(0xffe3e3e3)))),
                                  ),
                                  Container(
                                      child: Flexible(
                                    child: TextField(
                                      onTap: () {},
                                      onChanged: (text) {
                                        if (text.length > 9) {
                                          setState(() {
                                            ChangeColor = true;
                                          });
                                        } else if (text.length < 9) {
                                          setState(() {
                                            ChangeColor = false;
                                          });
                                        }
                                        if (text.length > 0) {
                                          setState(() {
                                            borderColor = true;
                                          });
                                        } else if (text.length == 0) {
                                          setState(() {
                                            borderColor = false;
                                          });
                                        }
                                      },
                                      autocorrect: true,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 14),
                                      textAlign: TextAlign.left,
                                      maxLines: 1,
                                      decoration: InputDecoration.collapsed(
                                          hintText: "Nhập số điện thoại"),
                                    ),
                                  ))
                                ]),
                          ),
                          VerticalSpacing(of: 16),
                          Container(
                            height: height / 22,
                            width: width - 50,
                            decoration: BoxDecoration(
                                color: ChangeColor
                                    ? Color(0xff9a5f2b)
                                    : Color(0xffc4c4c4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Center(
                              child: Text("Đăng nhập",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100)),
                            ),
                          ),
                          VerticalSpacing(of: 16),
                          Row(children: <Widget>[
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 25.0, right: 10.0),
                                  child: Divider(
                                    color: Color(0xff838383),
                                    height: 36,
                                  )),
                            ),
                            Text(
                              "HOẶC",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff838383),
                                  fontWeight: FontWeight.w800),
                            ),
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 25.0),
                                  child: Divider(
                                    color: Color(0xff838383),
                                    height: 36,
                                  )),
                            ),
                          ]),
                          VerticalSpacing(of: 16),
                          Container(
                            height: height / 22,
                            width: width - 50,
                            decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Center(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Image.asset(
                                        "assets/images/apple.png",
                                        height: 14,
                                      ),
                                    ),
                                    Text("Tiếp tục bằng Apple",
                                        style: TextStyle(
                                            color: Color(0xfffefefe),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w100)),
                                  ]),
                            ),
                          ),
                          VerticalSpacing(of: 10),
                          Container(
                            height: height / 22,
                            width: width - 50,
                            decoration: BoxDecoration(
                                color: Color(0xff3874cc),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Center(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Image.asset(
                                        "assets/images/facebook.png",
                                        height: 14,
                                      ),
                                    ),
                                    Text("Tiếp tục bằng Facebook",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w100)),
                                  ]),
                            ),
                          ),
                          VerticalSpacing(of: 10),
                          Container(
                            height: height / 22,
                            width: width - 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.5, color: Color(0xff838385)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Center(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Image.asset(
                                        "assets/images/google.png",
                                        height: 14,
                                      ),
                                    ),
                                    Text("Tiếp tục bằng Goole",
                                        style: TextStyle(
                                            color: Color(0xfff333333),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w100)),
                                  ]),
                            ),
                          ),
                          VerticalSpacing(of: 24),
                          Opacity(
                              opacity: 0.8,
                              child: Text("Tiếng Việt",
                                  style: TextStyle(fontSize: 14)))
                        ],
                      ),
                    )),
              )
            ],
          ),
        )));
  }
}
