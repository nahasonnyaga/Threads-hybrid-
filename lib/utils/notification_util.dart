import 'package:flutter/material.dart';

class NotificationUtil {
  static void show(BuildContext context, String message, {Color color = Colors.blue}) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message), backgroundColor: color));
  }
}
