import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _emailController = TextEditingController();

  Future<void> resetPassword() async {
    await AuthService.sendPasswordReset(_emailController.text);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password reset link sent!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reset Password')),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
            SizedBox(height: 16),
            ElevatedButton(onPressed: resetPassword, child: Text('Send Reset Link'))
          ],
        ),
      ),
    );
  }
}
