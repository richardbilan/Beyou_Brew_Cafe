import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100),
            SizedBox(height: 20),
            Text("User Name: John Doe", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Email: johndoe@example.com", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
