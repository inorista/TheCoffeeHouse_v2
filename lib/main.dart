import 'package:flutter/material.dart';
import 'package:travel/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travels App',
      theme: ThemeData(
        fontFamily: "OpenSans",
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0xfff4f4f4),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: buildHome(),
    );
  }
}
