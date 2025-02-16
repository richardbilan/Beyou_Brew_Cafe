import 'package:flutter/material.dart';
import '../models/order.dart';
import '../models/coffee.dart';

class OrderProvider with ChangeNotifier {
  final List<Order> _orders = [];

  List<Order> get orders => _orders;

  void placeOrder(String userId, List<Coffee> items) {
    final order = Order(
      orderId: DateTime.now().toString(),
      userId: userId,
      items: items,
      totalPrice: items.fold(0, (sum, item) => sum + item.price),
      status: "pending",
    );
    _orders.add(order);
    notifyListeners();
  }
}
