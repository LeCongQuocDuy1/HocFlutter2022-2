import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:hocflutter2022_2/views/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  List<String> _listNouns = [];

  @override
  Widget build(BuildContext context) {
    nouns.take(50).forEach((element) {
      _listNouns.add(element);
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("English Word"),
        ),
        body: Container(
          child: ListView(
            children: [
              ..._listNouns.map((e) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => Detail(word: e),
                    ));
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(e),
                      trailing: Icon(Icons.heart_broken),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
