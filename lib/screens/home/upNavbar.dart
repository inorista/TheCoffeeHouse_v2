import '../../size_config.dart';
import 'package:flutter/material.dart';
import '../../loginForm_/login.dart';

AppBar upAppBar(context) {
  return AppBar(
    toolbarHeight: 50,
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
