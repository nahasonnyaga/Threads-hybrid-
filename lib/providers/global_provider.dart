import 'package:flutter/material.dart';

class GlobalProvider extends ChangeNotifier {
  String? appVersion;
  bool isOnline = true;
  String locale = 'en';

  void setVersion(String ver) {
    appVersion = ver;
    notifyListeners();
  }
  void setOnline(bool online) {
    isOnline = online;
    notifyListeners();
  }
  void setLocale(String loc) {
    locale = loc;
    notifyListeners();
  }
}
