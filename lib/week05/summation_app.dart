import 'package:flutter/material.dart';

class SummationApp extends StatefulWidget {
  const SummationApp({super.key});

  @override
  State<SummationApp> createState() => _SummationAppState();
}

class _SummationAppState extends State<SummationApp> {
  String result = '';
  TextEditingController tcFirst = TextEditingController();
  TextEditingController tcSecond = TextEditingController();

  void calculate() {
    setState(() {
      // ignore: unused_local_variable
      String first = tcFirst.text.trim();
      // ignore: unused_local_variable
      String second = tcSecond.text.trim();
      if (tcFirst.text == '' || tcSecond.text == '') {
        result = 'Incorrect input';
      }else if(int.tryParse(tcFirst.text) == null || int.tryParse(tcSecond.text)==null){
        result = 'Incorrect input';
      }else{
        int sum = int.tryParse(tcFirst.text)! + int.tryParse(tcSecond.text)!;
        result = 'Result = $sum';
      }
    });
  }

  void clear() {
    setState(() {
      tcFirst.clear();
      tcSecond.clear();
       result='';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: tcFirst,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: 'First number'),
                  ),
                ),
                SizedBox(width: 20, child: Text('+')),
                SizedBox(
                  width: 130,
                  child: TextField(
                    controller: tcSecond,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: 'Second number'),
                  ),
                ),
              ],
            ),
             SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: calculate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: clear,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Text(
                    'Clear',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(color: Colors.red, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
