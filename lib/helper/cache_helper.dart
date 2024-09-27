import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late final SharedPreferences _sharedPreferences;
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static void setString(String key, String value) =>
      _sharedPreferences.setString(key, value);

  static void setInt(String key, int value) =>
      _sharedPreferences.setInt(key, value);
  static void setBool(String key, bool value) =>
      _sharedPreferences.setBool(key, value);

  static String? getString(String key) => _sharedPreferences.getString(key);
  static int? getInt(String key) => _sharedPreferences.getInt(key);
  static bool? getBool(String key) => _sharedPreferences.getBool(key);

  static Future<bool> removeAt(String key) => _sharedPreferences.remove(key);
  static Future<bool> clearAll() => _sharedPreferences.clear();
}
