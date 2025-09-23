import 'dart:async';
import 'package:flutter/material.dart';

class TimerDemo extends StatefulWidget {
  const TimerDemo({super.key});

  @override
  State<TimerDemo> createState() => _TimerDemoState();
}

class _TimerDemoState extends State<TimerDemo> {
  // String message = 'Start';
  int count = 5;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        count--;
        if(count==0){
          timer.cancel();
        }
      });
    });
    
    //ไม่ใช่เวลาทั้งหมดแต่เป็นเวลาที่อยากให้อัพเดต
    // //create a countdown Timer
    // Timer(Duration(seconds: 3), (){
    //   setState(() {
    //     message = 'Stop';
    //   });
    // });
    // Future.delayed(Duration(seconds: 3),(){
    //   setState(() {
    //     message ='stop';
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:Align(
        alignment: Alignment.topCenter,
        child:Text(count.toString(),style: TextStyle(fontSize: 30),),
      )),
    );
  }
}