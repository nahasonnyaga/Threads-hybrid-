import 'package:flutter/material.dart';

class AppToast {
  static void show(BuildContext context, String message, {Color? color}) {
    final bgColor = color ?? Colors.black87;
    final overlay = Overlay.of(context);
    final entry = OverlayEntry(
      builder: (_) => Positioned(
        bottom: 64,
        left: 24,
        right: 24,
        child: Material(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
            child: Center(
              child: Text(message, style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ),
        ),
      ),
    );
    overlay?.insert(entry);
    Future.delayed(Duration(seconds: 2), entry.remove);
  }
}
