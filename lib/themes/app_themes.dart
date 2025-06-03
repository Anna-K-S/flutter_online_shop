import 'package:flutter/material.dart';
import 'package:flutter_online_shop/themes/text_themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemes with ChangeNotifier {
  ThemeData _themeData = light;
  static const String _themePreferenceKey = 'theme_preference';

  ThemeData get themeData => _themeData;

  AppThemes() {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDarkMode = prefs.getBool(_themePreferenceKey) ?? false;
    _themeData = isDarkMode ? dark : light;
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    _themeData = _themeData == light ? dark : light;
    notifyListeners();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themePreferenceKey, _themeData == dark);
  }

  static ThemeData light = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.grey[100],
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey[100],
        titleTextStyle: TextThemes.light.headlineLarge,
      ),
      scaffoldBackgroundColor: Colors.grey[100],
      textTheme: TextThemes.light,
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll<Color>(
          Colors.white,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        iconColor: Colors.black,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll<Color>(
            Color.fromARGB(255, 243, 236, 236),
          ),
          iconColor: WidgetStatePropertyAll<Color>(Colors.grey.shade900),
        ),
      ));

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      titleTextStyle: TextThemes.dark.headlineLarge,
    ),
    textTheme: TextThemes.dark,
    searchBarTheme: const SearchBarThemeData(
      backgroundColor: WidgetStatePropertyAll<Color>(
        Colors.black,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      iconColor: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll<Color>(
          Color.fromARGB(255, 56, 53, 53),
        ),
        iconColor: WidgetStatePropertyAll<Color>(Colors.grey.shade100),
      ),
    ),
  );
}
