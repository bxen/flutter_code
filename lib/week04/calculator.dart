import 'dart:math';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String message = "";
  TextEditingController tcNum1 = TextEditingController();
  TextEditingController tcNum2 = TextEditingController();
  
  void updateSum() {
    setState(() {
      if(tcNum1.text =='' ||  tcNum2.text ==''){
        message = "Please input both numbers";
      }else if(int.tryParse(tcNum1.text) == null || int.tryParse(tcNum2.text) == null){
        message = "Please input only numbers";
      }else{
        int sum = int.tryParse(tcNum1.text)! + int.tryParse(tcNum2.text)!;
        message = "Result = $sum";
      }
    });
  }
  void updatePower() {
    setState(() {
      if(tcNum1.text =='' || tcNum2.text ==''){
        message = "Please input both numbers";
      }else if(int.tryParse(tcNum1.text) == null || int.tryParse(tcNum2.text) == null){
        message = "Please input only numbers";
      }else{
        int Num1=int.tryParse(tcNum1.text)!;
        int Num2=int.tryParse(tcNum2.text)!;
        num power = pow(Num1, Num2);
        message = "Result = $power";
      }
    });
  }
   void updateClear() {
    tcNum1.clear();
    tcNum2.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcNum1,
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: 'Number 1',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcNum2,
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: 'Number 2',
              ),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 241, 194, 42)),
            onPressed: updateSum,
            child: Text('Sum', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:  Colors.blue),
            onPressed: updatePower,
            child: Text('Power', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:  Colors.red),
            onPressed: updateClear,
            child: Text('Clear', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 10),
          Text(message,style:TextStyle(color: Colors.red),),
        ],
      ),
    );
  }
}