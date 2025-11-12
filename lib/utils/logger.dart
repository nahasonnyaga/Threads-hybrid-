class Logger {
  static void log(String tag, String msg) {
    final output = "[$tag]: $msg";
    print(output);
    // In production connect to Sentry, Crashlytics, or other log system
  }
}
