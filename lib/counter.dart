import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int _counter;

  Counter(this._counter);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          child: Center(
            child: Text(
              "$_counter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ],
    );
  }
}
