class AnalyticsUtil {
  static void logScreenView(String screenName) {
    print('Screen viewed: $screenName');
    // Integrate with real analytics SDK for production
  }

  static void logInteraction(String event, {Map<String, dynamic>? params}) {
    print('Interaction: $event ${params ?? {}}');
  }
}
