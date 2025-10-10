import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool sw = false;
  double slider = 0;
  String type = 'Hot';

  void updateSw(bool? value) {
    setState(() {
      // sw = value ?? true;
      // if (sw) {
      //   type = 'Hot';
      // } else {
      //   type = 'Cold';
      // }
    });
  }

  void updateSugarlevel(double? value) {
    setState(() {
      slider = value!;
    });
  }

  //show alert
  void btorder()async {
    await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Your Order'),
        content:Column(
          children: [
            Text('$type coffee with $slider suger')
          ],
        ) ,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MFU Coffee Shop',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Your order', style: TextStyle(fontSize: 18))],
            ),

            Row(
              children: [
                Text('Type'),
                SizedBox(width: 300),
                Text('Hot'),
                Switch(value: sw, onChanged: updateSw),
                Text('Cold'),
              ],
            ),
            Row(
              children: [
                Text('Suger level'),
                Slider(
                  value: slider,
                  divisions: 2,
                  onChanged: updateSugarlevel,
                ),
                Text('Normal'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(onPressed: btorder, child: Text('ORDER'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
