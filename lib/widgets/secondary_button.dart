import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  SecondaryButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
      ),
      onPressed: onPressed,
      child: Text(label, style: TextStyle(fontSize: 16)),
    );
  }
}
