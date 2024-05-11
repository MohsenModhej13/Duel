import 'package:duel/Core/Constant/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefStorage {
  late SharedPreferences prefs;

  SharedPrefStorage(this.prefs);

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
    return prefs.getBool(key) ?? false;
  }

  Future<void> setBool(String key, bool value) async {
    await prefs.setBool(key, value);
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

  static Future<bool> getIntroStatus() async {
    final prefs = await SharedPreferences.getInstance();

    final bool status = prefs.getBool(Intro) ?? false;

    return status;
  }

  static Future<void> setIntroStatus() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(Intro, true);
  }

  static Future<String?> getUserID() async {
    final prefs = await SharedPreferences.getInstance();

    final String? userStatus = prefs.getString(userID);
    return userStatus;
  }

  static Future<void> setUserID(String userId) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(userID, userId);
  }
}
