// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../Screen/user/home_screen.dart';
import '../screen/admin/admin_dashboard.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                authProvider.loginAsUser();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => HomeScreen()),
                );
              },
              child: Text("Login as User"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                authProvider.loginAsAdmin();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => AdminDashboard()),
                );
              },
              child: Text("Login as Admin"),
            ),
          ],
        ),
      ),
    );
  }
}
