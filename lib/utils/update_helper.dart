import 'package:flutter/material.dart';

class UpdateHelper {
  static void showUpdateDialog(BuildContext context, String version) {
    showDialog(
      context: context,
      builder: (cxt) => AlertDialog(
        title: Text('Update Available!'),
        content: Text('A new version ($version) is available. Please update your app to continue enjoying all features.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Later')),
          ElevatedButton(onPressed: (){ /* TODO: launch store URL */ }, child: Text('Update')),
        ],
      ),
    );
  }
}
