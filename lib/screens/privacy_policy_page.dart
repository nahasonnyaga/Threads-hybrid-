import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Privacy Policy')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Text(
            'Your privacy is important. We do not share your data except for features you enable. '
            'You can always export or delete your profile. Please review our full privacy policy on our website.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
