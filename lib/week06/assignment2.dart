import 'dart:async';

import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  double count = 1.00;
  Timer? timer;
  int click = 0;
  bool start = false;

  void btClick() {
    start = true;
    timer?.cancel();
    timer = Timer.periodic(const Duration(milliseconds: 10), (t) {
      setState(() {
        count -= 0.01;
        if (count <= 0) {
          count = 0.00;
          t.cancel();
          start = false;
        }
      });
    });
    if(start==true && count>0){
      click +=1;
    }
  }

  void btPlay() {
    timer?.cancel();
    setState(() {
      count =1.00;
      click = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                count.toStringAsFixed(2), // show with 2 decimals
                style: TextStyle(color: Colors.red),
              ),
            ),
            Text('Click = $click', 
            style: TextStyle(fontSize: 30)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: btClick,
                  icon: const Icon(Icons.touch_app),
                  style: FilledButton.styleFrom(
                    backgroundColor: (Colors.lightGreen),
                    foregroundColor: (Colors.white),
                  ),
                  label: Text('Click', style: TextStyle(fontSize: 14)),
                ),
                FilledButton.icon(
                  onPressed: btPlay,
                  icon: const Icon(Icons.refresh),
                  style: FilledButton.styleFrom(
                    backgroundColor: (Colors.white),
                    foregroundColor: (Colors.black),
                    side: BorderSide(color: Colors.grey, width: 1),
                    shape: StadiumBorder(), //วงรี
                  ),
                  label: Text('PLAY', style: TextStyle(fontSize: 14,color: Colors.red)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
