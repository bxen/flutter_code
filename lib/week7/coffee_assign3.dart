import 'package:flutter/material.dart';

class CoffeeAssign3 extends StatefulWidget {
  const CoffeeAssign3({super.key});

  @override
  State<CoffeeAssign3> createState() => _CoffeeAssign3State();
}

class _CoffeeAssign3State extends State<CoffeeAssign3> {
  bool sw = false;
  double slider = 1;
  String type = 'Hot';
  String level = 'less';
  String sugarlevel = 'normal';
  int gValue1 = 0;
  String coffee = 'Latte';
  int typeOfcofee = 0;
  String hotOrcold = 'imagehot';
  String message = ''; //thankyou message
  int priceOfcoffee =35;


  List menucoffee = [
    {
      'name': 'Latte',
      'price': 35,
      'imagecold': 'assets/images/coldlatte.jpg',
      'imagehot': 'assets/images/hotlatte.jpg',
    },
    {
      'name': 'Americono',
      'price': 30,
      'imagecold': 'assets/images/coldamericano.jpg',
      'imagehot': 'assets/images/hotamericano.jpg',
    },
    {
      'name': 'Cappuccino',
      'price': 40,
      'imagecold': 'assets/images/coldcappuccino.jpg',
      'imagehot': 'assets/images/hotcappuccino.jpg',
    },
  ];

  void updateSw(bool value) {
    setState(() {
      sw = value ?? false;
      if (sw) {
        type = 'Cold';
        hotOrcold = 'imagecold';
        priceOfcoffee = menucoffee[typeOfcofee]['price'] + 5;
      } else {
        type = 'Hot';
        hotOrcold = 'imagehot';
        priceOfcoffee = menucoffee[typeOfcofee]['price'];
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
            children: [
              Image.asset('${menucoffee[typeOfcofee][hotOrcold]}'),
              Text(
                '$type $coffee with $sugarlevel suger. Price = $priceOfcoffee bath',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  message = 'Thank you for your order!';
                });
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void changeRadio1(int? value) {
    setState(() {
      gValue1 = value!;
      if (gValue1 == 0) {
        coffee = 'Latte';
        typeOfcofee = 0;
      } else if (gValue1 == 1) {
        coffee = 'Americano';
        typeOfcofee = 1;
      } else {
        coffee = 'Cappuccino';
        typeOfcofee = 2;
      }
    });
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
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Coffee',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: 0,
                      groupValue: gValue1,
                      onChanged: changeRadio1,
                    ),
                    const Text('Latte 35'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: gValue1,
                      onChanged: changeRadio1,
                    ),
                    const Text('Americano 30'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: gValue1,
                      onChanged: changeRadio1,
                    ),
                    const Text('Cappuccino 40'),
                  ],
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Type', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 250),
                  Text('Hot'),
                  Switch(value: sw, onChanged: updateSw),
                  Text('Cold(+5)'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text('Suger', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 20),
                  Text('None'),
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
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  message,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
