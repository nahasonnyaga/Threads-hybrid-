import 'package:flutter/material.dart';

class OnboardingHelper extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  const OnboardingHelper({required this.icon, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          _parseIcon(icon),
          size: 64,
          color: Colors.blueAccent,
        ),
        SizedBox(height: 24),
        Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text(description, style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
      ],
    );
  }

  IconData _parseIcon(String name) {
    switch (name) {
      case 'star':
        return Icons.star;
      case 'create':
        return Icons.create;
      case 'share':
        return Icons.share;
      case 'lock':
        return Icons.lock;
      default:
        return Icons.info;
    }
  }
}
