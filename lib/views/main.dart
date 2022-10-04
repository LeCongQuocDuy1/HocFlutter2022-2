import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hocflutter2022_2/pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'English Card App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: LandingPage(),
    );
  }
}
