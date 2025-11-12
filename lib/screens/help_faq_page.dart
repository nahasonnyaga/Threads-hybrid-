import 'package:flutter/material.dart';

class HelpFaqPage extends StatelessWidget {
  final faqs = [
    {'q': 'How do I post?', 'a': 'Tap the "+" button, write your post, and add media.'},
    {'q': 'How to reset password?', 'a': 'Go to Login > Forgot Password.'},
    {'q': 'Can I go premium?', 'a': 'Yes, tap on Premium in the menu.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help & FAQ')),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (ctx, idx) => ExpansionTile(
          title: Text(faqs[idx]['q']!),
          children: [Padding(
            padding: const EdgeInsets.all(14),
            child: Text(faqs[idx]['a']!),
          )],
        ),
      ),
    );
  }
}
