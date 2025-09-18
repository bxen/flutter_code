import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignApp extends StatefulWidget {
  const DesignApp({super.key});

  @override
  State<DesignApp> createState() => _DesignAppState();
}

class _DesignAppState extends State<DesignApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      
      body:SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Wedding Organizer',
                style: GoogleFonts.sevillana(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),),
                 const SizedBox(height: 5),
                 Text('Pre-wedding,Photo,Party',
                style: GoogleFonts.sevillana(
                  color: Colors.white,
                  fontSize: 25,
                ),),
                 const SizedBox(height: 20),
                 ElevatedButton(onPressed:(){},
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ) ,
                  child: Text('Our services',
                  style: TextStyle(color: Colors.white),)),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
               padding: EdgeInsets.only(bottom: 10),
            child: Text(
              '345 Moo1 Tasud Chiang Rai, Thailand',
              style: TextStyle(color: Colors.white,
            ),
          ),),)
        ],
      ) ,
      )
    );
  }
}
