import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  String message = "";
  TextEditingController tcName = TextEditingController();
  TextEditingController tcPass = TextEditingController();
  
  void updateMessage1() {
    setState(() {
      // message = tcName.text;
      if (tcName.text == "admin" && tcPass.text == "1234") {
        message ="Welcome admin";
      } else {
        message ="Wrong username or password";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcName,
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: 'Username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcPass,
              obscureText: true,
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: updateMessage1,
            child: Text('Login', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 10),
          Text(message,style:TextStyle(color: Colors.red),),
        ],
      ),
    );
  }
}
