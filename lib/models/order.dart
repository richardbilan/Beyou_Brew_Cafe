import 'coffee.dart';

class Order {
  final String orderId;
  final String userId;
  final List<Coffee> items;
  final double totalPrice;
  final String status; // pending, preparing, completed

  Order({
    required this.orderId,
    required this.userId,
    required this.items,
    required this.totalPrice,
    required this.status,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      orderId: json['orderId'],
      userId: json['userId'],
      items: (json['items'] as List).map((i) => Coffee.fromJson(i)).toList(),
      totalPrice: json['totalPrice'].toDouble(),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'userId': userId,
      'items': items.map((i) => i.toJson()).toList(),
      'totalPrice': totalPrice,
      'status': status,
    };
  }
}
