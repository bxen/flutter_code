import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //state variable
  int count = 0;
  //methods
  void update() {
    // debugPrint(message);
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Text(
          "Count = $count",
          style: TextStyle(fontSize: 26, color: Colors.blue[900]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:update,
        backgroundColor: Colors.indigo,
        child: Text('Click', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
