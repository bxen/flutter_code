import 'package:flutter/material.dart';

class LoginDynamic extends StatefulWidget {
  const LoginDynamic({super.key});

  @override
  State<LoginDynamic> createState() => _LoginDynamicState();
}

class _LoginDynamicState extends State<LoginDynamic> {
  List<Color> darkBgColors = [
    const Color(0xFF0D1441),
    const Color(0xFF283584),
    const Color(0xFF376AB2),
  ];

  List<Color> lightBgColors = [
    const Color(0xFF8C2480),
    const Color(0xFFCE587D),
    const Color(0xFFFF9485),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //จำคำนวณหน้าจอให้โดยอัตโนมัติ
    DateTime now=DateTime.now();//คำนวณเวลาปัจจุบัน

    return Scaffold(
      body: Container(
        // width: double.infinity,
        // height: double.infinity,//ไม่ค่อยนิยมใช้
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: now.hour>18? lightBgColors: darkBgColors, //To use colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, //เพิ่มให้ขยายความกว้างของรูป
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Spacer(),
                      Text(
                       now.hour >18 ? 'Good Morning' : 'Good Evening',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      Text('Plese sign in blow',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,),),
                      Text('Email',style: TextStyle(
                          color: Colors.white,
                          ),),
                      TextField(
                        decoration: InputDecoration(
                          // enabledBorder: InputBorder.none,//เอาขอบออก
                          hintText: 'Username',
                        ),
                      ),
                      Text('Password',style: TextStyle(
                          color: Colors.white,
                          )),
                      TextField(
                        decoration: InputDecoration(
                          // enabledBorder: InputBorder.none,//เอาขอบออก
                          hintText: 'Password',
                        ),
                      ),
                       Spacer(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Image.asset(
                  'assets/images/landscape.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
