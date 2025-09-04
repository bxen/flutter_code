import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //state variable
  String message = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter app')),
      body: Text(message),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // debugPrint(message);
          setState(() {
            // message = (message == "hi") ? "hello" : "hi";
            if (message == "hi") {
              message = "hello";
            } else {
              message = "hi";
            }
          });
        },
        child: Text('Click'),
      ),
    );
  }
}
