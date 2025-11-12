import 'package:flutter/material.dart';
// Import all your pages here!
import '../screens/home_page.dart';
import '../screens/profile_page.dart';
import '../screens/explore_page.dart';
import '../screens/reels_page.dart';
import '../screens/notifications_page.dart';
import '../screens/login_page.dart';
import '../screens/signup_page.dart';
import '../screens/upload_post_page.dart';
import '../screens/monetization_page.dart';
import '../screens/push_notifications_page.dart';
import '../screens/settings_page.dart';
import '../screens/terms_conditions_page.dart';
import '../screens/privacy_policy_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/explore':
        return MaterialPageRoute(builder: (_) => ExplorePage());
      case '/reels':
        return MaterialPageRoute(builder: (_) => ReelsPage());
      case '/notifications':
        return MaterialPageRoute(builder: (_) => NotificationsPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupPage());
      case '/upload_post':
        return MaterialPageRoute(builder: (_) => UploadPostPage());
      case '/monetization':
        return MaterialPageRoute(builder: (_) => MonetizationPage());
      case '/push_notifications':
        return MaterialPageRoute(builder: (_) => PushNotificationsPage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case '/terms':
        return MaterialPageRoute(builder: (_) => TermsConditionsPage());
      case '/privacy':
        return MaterialPageRoute(builder: (_) => PrivacyPolicyPage());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
