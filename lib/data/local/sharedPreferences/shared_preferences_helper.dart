import 'dart:convert';

// import 'package:amazon/models/reponses/login_response.dart';
import 'package:amazon/models/data_models/loginResponse.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui' as ui;

class SharedPreferencesHelper {
  static final SharedPreferencesHelper _singleton =
      new SharedPreferencesHelper._internal();

  factory SharedPreferencesHelper() {
    return _singleton;
  }

  SharedPreferencesHelper._internal();

  Future<bool> getFirstEntrance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("FirstEntrance") ?? false;
  }

  saveFirstEntrance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("FirstEntrance", true);
  }

  Future<bool> getAsDriver() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("asdriver") ?? false;
  }

  saveAsDriver(bool asdriver) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("asdriver", asdriver);
  }

  Future<bool> getIsEnglish() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("lang is ${prefs.getBool("isEnglish")}");
    print("lang is ${ui.window.locale.languageCode}");
    return prefs.getBool("isEnglish") ?? ui.window.locale.languageCode == "ar"
        ? false
        : true;
  }

  saveIsEnglish(bool isEnglish) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("isEnglish", isEnglish);
  }

  Future<String> getPhone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("phone") ?? "";
  }

  savePhone(String phone) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("phone", phone);
  }

  Future<String> getCountryCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("countrycode") ?? "GG";
  }

  saveCountryCode(String phone) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("countrycode", phone);
  }

  Future<int> getCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt("code") ?? 0;
  }

  saveCode(int code) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("code", code);
  }

  Future<bool> getOldUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("oldUser") ?? false;
  }

  saveOldUser(bool r) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("oldUser", r);
  }

  Future<bool> getIsExpress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("express") ?? false;
  }

  saveIsExpress(bool isExpress) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("express", isExpress);
  }

  Future<LoginResponse> getCheckPhoneResponse() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(
        "pref user is ${prefs.getString("CheckPhoneResponse").toString() == "null"}");
    return prefs.getString("CheckPhoneResponse").toString() == "null"
        ? null
        : LoginResponse.fromString(prefs.getString("CheckPhoneResponse"));
  }

  saveProfile(LoginResponse profile) async {
    print("profile to shareed ${profile.toString()}");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("CheckPhoneResponse", profile.toString());
  }
}
