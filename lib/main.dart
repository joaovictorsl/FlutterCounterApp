import 'package:flutter/material.dart';
import 'counter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.orange),
    home: HomePage(),
  ));
  // runApp(Container());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 0;

  void increment() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  void decrement() {
    if (_counter > 0) {
      setState(() {
        _counter = _counter - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Counter(_counter),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 150,
              child: FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: () {
                    decrement();
                  })),
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                increment();
              }),
        ],
      ),
    );
  }
}
