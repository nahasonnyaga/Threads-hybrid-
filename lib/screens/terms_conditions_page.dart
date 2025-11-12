import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Terms & Conditions')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Text(
            'By using this app, you agree to follow community guidelines, respect others, and abide by our terms. '
            'Content that violates laws or our standards may be removed and accounts may be restricted or banned.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
