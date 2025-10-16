import 'package:flutter/material.dart';

class Coffeeshop extends StatefulWidget {
  const Coffeeshop({super.key});

  @override
  State<Coffeeshop> createState() => _CoffeeshopState();
}

class _CoffeeshopState extends State<Coffeeshop> {
  bool sw = false;
  double slider = 1;
  String type = 'Hot';
  String level = 'less';
  String sugarlevel = 'normal';

  void updateSw(bool value) {
    setState(() {
      sw = value ?? false;
      if (sw) {
        type = 'Cold';
      } else {
        type = 'Hot';
      }
    });
  }

  void updateSugarlevel(double value) {
    setState(() {
      slider = value ?? 0.0;
      if (slider == 0.0) {
        sugarlevel = 'no';
      } else if (slider == 0.5) {
        sugarlevel = 'less';
      } else {
        sugarlevel = 'normal';
      }
    });
  }

  //show alert
  void btorder() async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Your Order'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text('$type coffee with $sugarlevel suger')],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU Coffee Shop', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text('Your order', style: TextStyle(fontSize: 24)),
                )],
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Type'),
                  SizedBox(width: 280),
                  Text('Hot'),
                  Switch(value: sw, onChanged: updateSw),
                  Text('Cold'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text('Suger level'),
                  Slider(
                    value: slider,
                    label: sugarlevel,
                    divisions: 2,
                    onChanged: updateSugarlevel,
                  ),
                  SizedBox(width: 90),
                  Text('Normal'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(onPressed: btorder, child: Text('ORDER')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
