import 'package:flutter/material.dart';

Future<void> showInfoDialog(BuildContext context, String title, String message) async {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(child: Text('OK'), onPressed: () => Navigator.pop(context)),
      ],
    ),
  );
}
