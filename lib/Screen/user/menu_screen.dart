import 'package:flutter/material.dart';
import '../../models/coffee.dart';

class MenuScreen extends StatelessWidget {
  final List<Coffee> menuItems = [
    Coffee(name: "Espresso", price: 100),
    Coffee(name: "Cappuccino", price: 120),
    Coffee(name: "Latte", price: 130),
    Coffee(name: "Mocha", price: 140),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final coffee = menuItems[index];
        return Card(
          child: ListTile(
            title: Text(coffee.name),
            subtitle: Text("₱${coffee.price}"),
            trailing: ElevatedButton(
              onPressed: () {
                // Add to cart logic
              },
              child: Text("Add to Cart"),
            ),
          ),
        );
      },
    );
  }
}
