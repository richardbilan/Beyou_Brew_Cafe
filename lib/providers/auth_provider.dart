import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isAdmin = false;
  bool _isUser = false;

  bool get isAdmin => _isAdmin;
  bool get isUser => _isUser;

  void loginAsUser() {
    _isUser = true;
    _isAdmin = false;
    notifyListeners();
  }

  void loginAsAdmin() {
    _isAdmin = true;
    _isUser = false;
    notifyListeners();
  }

  void logout() {
    _isUser = false;
    _isAdmin = false;
    notifyListeners();
  }
}
