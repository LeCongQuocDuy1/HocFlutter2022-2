import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.word}) : super(key: key);
  final String word;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(word),
        ),
      ),
    );
  }
}
