import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  // Key for SharedPreferences
  static const String _themeKey = "isDarkMode";

  // Observable variable
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromPrefs();
  }

  ThemeMode get theme => isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  // Toggle theme
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(theme);
    _saveThemeToPrefs();
  }

  /// -----------------------
  /// Load theme from SharedPreferences
  /// -----------------------
  void _loadThemeFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool(_themeKey) ?? false;
    Get.changeThemeMode(theme);
  }

  /// -----------------------
  /// Save theme to SharedPreferences
  /// -----------------------
  void _saveThemeToPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_themeKey, isDarkMode.value);
  }
}
