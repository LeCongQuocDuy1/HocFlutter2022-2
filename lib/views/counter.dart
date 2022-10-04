import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => CounterProvider())],
    child: MyApp(),
  ));
}

class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void Increment() {
    _counter++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Counter: ${counterProvider.counter}"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterProvider.Increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
