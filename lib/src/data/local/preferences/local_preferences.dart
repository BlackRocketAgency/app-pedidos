import 'package:shared_preferences/shared_preferences.dart';

class LocalPreferences {
  static late SharedPreferences preferences;

  static Future<void> initPreferences() async {
    preferences = await SharedPreferences.getInstance();
  }
}
