import 'package:http/http.dart' as http;

class NetworkHelper {
  static Future<http.Response> getRequest(String url) async => await http.get(Uri.parse(url));
  static Future<http.Response> postRequest(String url, Map<String, dynamic> data) async =>
      await http.post(Uri.parse(url), body: data);
}
