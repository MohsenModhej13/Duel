import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isDark() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('is_dark') ?? false;
}

Future<void> setTheme(bool isDark) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('is_dark', !isDark);
}
