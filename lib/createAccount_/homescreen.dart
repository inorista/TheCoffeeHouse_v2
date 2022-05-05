import 'package:flutter/material.dart';

import 'body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: CreateAccountBody(),
    );
  }
}

AppBar BuildAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,

      // mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 60),
        ),
        Text(
          "Tạo tài khoản",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ],
    ),
    leading: new IconButton(
      icon: new Icon(Icons.arrow_back_ios),
      onPressed: () {},
      iconSize: 25,
      color: Colors.black,
      splashColor: Colors.red,
    ),
    backgroundColor: Colors.lime,
    elevation: 15,
    actions: <Widget>[
      // Icon(Icons.arrow_forward_ios),
    ],
  );
}
