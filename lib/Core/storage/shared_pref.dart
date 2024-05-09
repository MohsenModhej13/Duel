import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefStorage {
  final SharedPreferences _prefs;

  SharedPrefStorage(this._prefs);

  static Future<SharedPrefStorage> create() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return SharedPrefStorage(prefs);
    } catch (e) {
      // Handle exception (e.g., log error, throw custom exception)
      if (kDebugMode) {
        print('Error getting SharedPreferences: $e');
      }
      rethrow; // Or throw a custom exception
    }
  }

  // Preference keys
  static const String isDark = 'is_dark';

  Future<bool> getBool(String key) async {
    return _prefs.getBool(key) ?? false;
  }

  Future<void> setBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  // Example usage:
  static Future<void> isDarkTheme() async {
    final storage = await SharedPrefStorage.create();
    storage.getBool(isDark);
  }

 static Future<void> setTheme(bool isDark) async {
    final prefs = await create();
    await prefs.setBool('is_dark', !isDark);
  }
}
