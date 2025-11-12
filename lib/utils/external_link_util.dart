import 'package:url_launcher/url_launcher.dart';

class ExternalLinkUtil {
  static Future<void> launchUrlString(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
}
