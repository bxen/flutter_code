import 'package:flutter/material.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String dropValue = 'red'; //ตั้งค่าให้เป็ฯค่าเริ่มต้น

  void updatedropdown(String? value) {
  setState(() {
    dropValue=value!;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              value: dropValue,
              items: [
                DropdownMenuItem(value: 'red', child: Text('Red')),
                DropdownMenuItem(value: 'blue', child: Text('Blue')),
                DropdownMenuItem(value: 'yellow', child: Text('Yellow')),
              ],
              onChanged: updatedropdown,
            ),
            Text('You choose $dropValue')
          ],
        ),
      ),
    );
  }
}
