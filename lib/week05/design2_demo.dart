import 'package:flutter/material.dart';

class Design2Demo extends StatelessWidget {
  const Design2Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                 'https://icons.iconarchive.com/icons/diversity-avatars/avatars/512/batman-icon.png',
                  ),
                ),
              ),
            ),
            Divider(color: Colors.grey, height: 60),
            Text('Name', style: TextStyle(color: Colors.grey[400])),
            Text('John', style: TextStyle(color: Colors.yellow,fontSize: 22)),
            SizedBox(height: 8),
            Text('Age', style: TextStyle(color: Colors.grey[400])),
            Text('22', style: TextStyle(color: Colors.yellow, fontSize: 22)),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 8,),
                Text(
                  'John@email.com',style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
