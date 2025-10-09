import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int radio1 = 0;
  List animals = ['Cat', 'Pubby', 'Fish', 'Hen'];

  //ทำ loop
  List<Widget> createRadio() {
    // List<Widget> radios = [];
    // for (int i = 0; i < animals.length; i++) {
    //   radios.add(Radio(value: i, groupValue: radio1, onChanged: updateRadio1));
    //   radios.add(Text(animals[i]));
    // }

    List<Widget> radios =List.generate(animals.length,(index)=>Radio(value: index, 
    groupValue: radio1, onChanged: updateRadio1));

    radios.add(SizedBox(width: 20));
    radios.add(Text('You choose $radio1'));
    return radios;
  }

  void updateRadio1(int? value) {
    setState(() {
      radio1 = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           Row()
          ],
        ),
      ),
    );
  }
}
