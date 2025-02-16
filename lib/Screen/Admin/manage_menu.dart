import 'package:flutter/material.dart';

class ManageMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manage Menu")),
      body: Center(
        child: Text("Here, the admin can add, edit, or delete coffee items."),
      ),
    );
  }
}
