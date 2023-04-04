import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) async {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', isOn);
    notifyListeners();
  }

  initilize() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('isDarkMode') != null) {
      themeMode =
          prefs.getBool('isDarkMode')! ? ThemeMode.dark : ThemeMode.light;
    } else {
      themeMode = ThemeMode.system;
    }
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.black, foregroundColor: Colors.white),
      iconTheme: IconThemeData(color: Colors.purple.shade200.withOpacity(0.8)),
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: Colors.black,
      colorScheme: const ColorScheme.dark());

  static final lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, foregroundColor: Colors.black),
      iconTheme: IconThemeData(color: Color(0xffC782E4)),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.grey.shade300,
      colorScheme: const ColorScheme.light());
}
