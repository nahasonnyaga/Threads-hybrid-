import 'package:flutter/material.dart';

void showCustomModal(BuildContext context, Widget child) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
    ),
    builder: (ctx) => Padding(
      padding: const EdgeInsets.all(16),
      child: child,
    ),
  );
}
