import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _oldController = TextEditingController();
  final _newController = TextEditingController();

  Future<void> changePassword() async {
    // TODO: Replace with secure reauth and update in production
    await AuthService.changePassword(_oldController.text, _newController.text);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password changed.')));
    _oldController.clear();
    _newController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Password')),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(controller: _oldController, decoration: InputDecoration(labelText: 'Old Password'), obscureText: true),
            TextField(controller: _newController, decoration: InputDecoration(labelText: 'New Password'), obscureText: true),
            SizedBox(height: 18),
            ElevatedButton(onPressed: changePassword, child: Text('Update Password')),
          ],
        ),
      ),
    );
  }
}
