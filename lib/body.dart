import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Container(
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {},
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.yellowAccent,
                  iconSize: 30),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Image.asset("assets/images/logo.png"),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(children: <Widget>[
              Text(
                "Chọn phương thức đặt hàng",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            constraints: BoxConstraints(maxWidth: 340),
            child: Column(children: <Widget>[
              Text(
                "Chọn phương thức đặt hàng để xem thực đơn và ưu đãi phù hợp",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            margin: EdgeInsets.only(top: 20),
            width: 350,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[600],
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0)
              ],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset("assets/images/bike.png"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      // padding: EdgeInsets.only(top: 10),
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Giao tận nơi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {},
                                padding: EdgeInsets.only(left: 200),
                                color: Colors.grey,
                                iconSize: 25),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          constraints: BoxConstraints(maxWidth: 312),
                          child: Text(
                            "Các món sẽ được giao đến địa chỉ của bạn",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            margin: EdgeInsets.only(top: 20),
            width: 350,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[600],
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0)
              ],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset("assets/images/plasticglass.png"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 0),
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Tự đến lấy",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {},
                                padding: EdgeInsets.only(left: 209),
                                color: Colors.grey,
                                iconSize: 25),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          constraints: BoxConstraints(maxWidth: 312),
                          child: Text(
                            "Bạn sẽ đến quầy nhận món tại cửa hàng và lấy mang đi",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
