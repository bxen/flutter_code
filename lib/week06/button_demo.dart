import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

// To short code and call the function

  Widget createIconButton() {
    return OverflowBar(
      alignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.volume_up, color: Colors.red),
          onPressed: () {
            debugPrint('icon button');
          },
        ),
        Ink(
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.blueAccent,
          ), //to set the bg color and shapebutton
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.android, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget createOutlinedButton() {
    return OverflowBar(
      children: [
        OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
        SizedBox(width: 5),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(foregroundColor: Colors.deepOrange),
          child: Text('OutlinedButton'),
        ),
      ],
    );
  }

  Widget createButton(){
    return OverflowBar(
      children: [
        TextButton(onPressed: (){}, child: Text('TextButton')),
        ElevatedButton(onPressed: (){}, child: Text('ElevatedButton')),
        FilledButton(onPressed: (){}, child: Text('FillButton'))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            createIconButton(),
            Divider(),
            createOutlinedButton(),
             Divider(),
            createButton(),
          ],
        ),
      ),
    );
  }
}
