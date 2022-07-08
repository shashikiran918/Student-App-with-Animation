

import 'package:shared_preferences/shared_preferences.dart';

class PreferencesApp {
  static final PreferencesApp _instance = PreferencesApp._();
  late SharedPreferences _sharedPreferences;

  factory PreferencesApp() {
    return _instance;
  }

  PreferencesApp._();

  SharedPreferences get sharedPreferences => _sharedPreferences;
  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }



  Future<bool> setLanguage(String codeLang) async{
    return await _sharedPreferences.setString("codeLang", codeLang);
  }

  String get codeLang => _sharedPreferences.getString("codeLang") ?? "en";

}