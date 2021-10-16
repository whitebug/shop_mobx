import 'package:shared_preferences/shared_preferences.dart';

import 'locator.dart';

/// This class allow saving data in shared preferences
class Shared {
  static SharedPreferences pref = getIt<SharedPreferences>();

  /// Save a string [value] with [key] in shared preferences
  static saveString({
    required String key,
    required String value,
  }) {
    pref.setString(key, value);
  }

  /// Getting a string from shared preferences by a [key]
  static String? getString({required String key}) {
    return pref.getString(key);
  }
}
