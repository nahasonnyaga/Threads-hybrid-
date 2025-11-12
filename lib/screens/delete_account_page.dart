import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class DeleteAccountPage extends StatelessWidget {
  Future<void> deleteUser(BuildContext context) async {
    // In production, confirm deletion before calling this.
    await AuthService.deleteAccount();
    Navigator.pushReplacementNamed(context, '/onboarding');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Account deleted successfully.')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delete Account')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text('Are you sure you want to permanently delete your account?', style: TextStyle(fontSize: 18)),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Text('Delete My Account'),
              onPressed: () => deleteUser(context),
            ),
          ],
        ),
      ),
    );
  }
}
