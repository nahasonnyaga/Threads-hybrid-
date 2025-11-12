import 'package:flutter/material.dart';

class ThemeSwitcherProvider extends ChangeNotifier {
  ThemeData _theme = ThemeData.light();
  ThemeData get theme => _theme;

  void setDark() {
    _theme = ThemeData.dark();
    notifyListeners();
  }

  void setLight() {
    _theme = ThemeData.light();
    notifyListeners();
  }
}
