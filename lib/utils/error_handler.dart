import 'package:flutter/material.dart';

class ErrorHandler {
  static void show(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.red,
    ));
  }
}
