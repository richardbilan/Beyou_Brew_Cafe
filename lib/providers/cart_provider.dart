import 'package:flutter/material.dart';
import '../models/coffee.dart';

class CartProvider with ChangeNotifier {
  final List<Coffee> _cartItems = [];

  List<Coffee> get cartItems => _cartItems;

  void addToCart(Coffee coffee) {
    _cartItems.add(coffee);
    notifyListeners();
  }

  void removeFromCart(Coffee coffee) {
    _cartItems.remove(coffee);
    notifyListeners();
  }

  double get totalPrice => _cartItems.fold(0, (sum, item) => sum + item.price);
}
