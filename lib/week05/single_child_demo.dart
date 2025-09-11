import 'package:flutter/material.dart';

class SingleChildDemo extends StatelessWidget {
  const SingleChildDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Myapp'),), 

      body: SafeArea(
        child: Align(
          //Align is (x,y) -1<=x<=1,-1<=y<=1 and (0,0) is at ter parents center
          alignment:Alignment(0, 0),
          child:Text('Single child'),

        )
      ),
    );
  }
}