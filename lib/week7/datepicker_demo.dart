import 'package:flutter/material.dart';

class DatepickerDemo extends StatefulWidget {
  const DatepickerDemo({super.key});

  @override
  State<DatepickerDemo> createState() => _DatepickerDemoState();
}

class _DatepickerDemoState extends State<DatepickerDemo> {
  String date = '';
  String time = '';

  void showCalendar() async {
    DateTime? dt = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025, 10, 1),
      lastDate: DateTime(2025, 12, 31),
    );
    if (dt != null) {
      setState(() {
        date = '${dt.day}/${dt.month}/${dt.year}';
      });
    } else {
      setState(() {
        date = 'Please select a date';
      });
    }
  }

  void showTimepicker() async {
    TimeOfDay? td = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (td != null){
      setState(() {
        time ='${td.hour}:${td.minute}';
      });
    }else{
      setState(() {
        time = 'Please select a time';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(date),
            FilledButton.icon(
              onPressed: showCalendar,
              label: Text('Select'),
              icon: Icon(Icons.calendar_month),
            ),
            SizedBox(height: 30),
            Text(time),
            FilledButton.icon(
              onPressed: showTimepicker,
              icon: Icon(Icons.timelapse),
              label: Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}
