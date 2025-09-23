import 'package:flutter/material.dart';

class TouristDemo extends StatefulWidget {
  const TouristDemo({super.key});

  @override
  State<TouristDemo> createState() => _TouristDemoState();
}

class _TouristDemoState extends State<TouristDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //hearder
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.blueGrey[700],
            child: Text(
              'Tourist Place',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Image.asset('assets/images/clock-tower.jpg'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left: Title + Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chiang Rai Clock Tower',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Chiang Rai, Thailand',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
              // Right: Star + Rating
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.redAccent),
                  SizedBox(width: 4),
                  Text("559", style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.blue),
                  Text('CALL', style: TextStyle(color: Colors.blue)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.turn_right_rounded, color: Colors.blue),
                  Text('ROUTE', style: TextStyle(color: Colors.blue)),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue),
                  Text('SHARE', style: TextStyle(color: Colors.blue)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
