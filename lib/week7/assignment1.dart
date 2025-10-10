import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  String date1 = '';
  String date2 = '';
  void updateFrom() async {
    DateTime? dt = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025, 10, 1),
      lastDate: DateTime(2025, 10, 31),
    );
    if (dt != null) {
      setState(() {
        date1 = '${dt.day}/${dt.month}/${dt.year}';
        date2 = '${dt.day}/${dt.month}/${dt.year}';
      });
    }
  }
  void updateTo() async {
    DateTime? dt = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025, 10, 1),
      lastDate: DateTime(2025, 10, 31),
    );
    if (dt != null) {
      setState(() {
        date2 = '${dt.day}/${dt.month}/${dt.year}';
      });
    }if (dt==null){
       setState(() {
        date2 = date1;
       });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DatePicker Demo')),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                FilledButton.icon(
                  onPressed: updateFrom,
                  icon: Icon(Icons.calendar_today),
                  label: Text('From'),
                ),
                SizedBox(width: 5),
                Text(date1),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                FilledButton.icon(
                  onPressed: updateTo,
                  icon: Icon(Icons.calendar_today),
                  label: Text('To'),
                ),
                SizedBox(width: 5),
                Text(date2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
