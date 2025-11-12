import 'package:flutter/material.dart';
import '../constants/routes.dart';

class LegalFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        TextButton(
          child: Text('Terms'),
          onPressed: () => Navigator.pushNamed(context, Routes.terms),
        ),
        TextButton(
          child: Text('Privacy'),
          onPressed: () => Navigator.pushNamed(context, Routes.privacyPolicy),
        ),
        Text('© 2025 Testagram', style: TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}
