import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Xin chao ban Le Cong Quoc Duy nha",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text.rich(TextSpan(text: "Hello ", children: [
              TextSpan(
                  text: "Le Cong ",
                  style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(
                  text: "Quoc Duy",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ])),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.verified_user, color: Colors.amber, size: 40),
                Icon(Icons.verified_user, color: Colors.deepOrange, size: 40),
                Icon(Icons.verified_user, color: Colors.purple, size: 40),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.network(
                      'https://th.bing.com/th?q=IU+Makeup&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=vi&adlt=moderate&t=1&mw=247',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      'https://th.bing.com/th?q=IU+Makeup&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=vi&adlt=moderate&t=1&mw=247',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      'https://th.bing.com/th?q=IU+Makeup&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=vi&adlt=moderate&t=1&mw=247',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
            Image.network(
              'https://th.bing.com/th?q=IU+Makeup&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=vi&adlt=moderate&t=1&mw=247',
              width: 200,
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  print("Xin chao IU");
                },
                child: Row(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    Text("Click here!"),
                  ],
                )),
            ElevatedButton.icon(
              onPressed: () {
                print("Xin chao IU");
              },
              icon: Icon(Icons.arrow_downward),
              label: Text("Download now!"),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.lightGreen)),
                child: const Text('Enabled')),
            OutlinedButton(
              child: new Text("Button text"),
              onPressed: null,
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                'https://th.bing.com/th?q=IU+Makeup&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=vi&adlt=moderate&t=1&mw=247',
                width: 200,
                height: 200,
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "Restaurant app",
          style: TextStyle(color: Colors.red),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Icon(Icons.home),
            Icon(Icons.supervised_user_circle_outlined),
          ],
        ),
      ),
      floatingActionButton: Icon(Icons.add),
    ));
  }
}
