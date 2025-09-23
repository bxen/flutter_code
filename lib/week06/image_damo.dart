import 'package:flutter/material.dart';

class ImageDamo extends StatelessWidget {
  const ImageDamo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Demo')),
      body: Center(child: Image(image: AssetImage('assets/images/sky.jpg'))),
    );
  }
}
