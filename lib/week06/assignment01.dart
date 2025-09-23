import 'package:flutter/material.dart';

const Color bgColor = Color(0xFF202020);
const Color primaryColor = Color(0xFFFFBD73);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Assignment01(),
    );
  }
}

class Assignment01 extends StatefulWidget {
  const Assignment01({super.key});

  @override
  State<Assignment01> createState() => _Assignment01State();
}

class _Assignment01State extends State<Assignment01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image
          Expanded(
            flex: 4,
            child: Image.asset(
              'assets/images/baking.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Text, inputs, and buttons
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Icon(Icons.alternate_email, color: primaryColor),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.lock_open, color: primaryColor),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: Icon(Icons.android, color: Colors.grey),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                          side: BorderSide(color: Colors.grey),
                        ),
                        child: Icon(Icons.message, color: Colors.grey),
                      ),
                      const Spacer(),
                      FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                        ),
                        child: Icon(Icons.arrow_forward, color: bgColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
