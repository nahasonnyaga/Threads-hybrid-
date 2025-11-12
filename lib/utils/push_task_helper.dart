import 'dart:async';

class PushTaskHelper {
  static Future<void> runBackgroundTask(Function() task) async {
    // For real background execution, use WorkManager/Isolate in production.
    await Future.delayed(Duration(seconds: 2));
    task();
  }
}
