import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
