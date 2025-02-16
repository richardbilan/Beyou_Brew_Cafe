import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Orders Management")),
      body: Center(
        child: Text("Here, the admin can view and manage customer orders."),
      ),
    );
  }
}
