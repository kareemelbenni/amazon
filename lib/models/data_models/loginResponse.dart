import 'dart:convert';

import '/data/local/sharedPreferences/shared_preferences_helper.dart';
import '/models/data_models/user.dart';

class LoginResponse {
  User user;
  String token;

  LoginResponse(
    User user,
    String token,
  ) {
    this.user = user;
    this.token = token;
  }

  LoginResponse.fromitem() {
    this.user = null;
    this.token = '';
  }
  LoginResponse.fromjson() {
    this.user = null;
    this.token = '';
  }

  LoginResponse.fromJson(Map<String, dynamic> json) {
    print("json is $json");
    this.user = User.fromJson(json['user']);
    this.token =
        json['token'].toString() == "null" ? "" : json['token'].toString();
  }

  LoginResponse.fromJson2(
      Map<String, dynamic> json) {
    this.user = User.fromJson(json['user']);

    this.token = json['token'];
  }

  LoginResponse.fromJson3(
      Map<String, dynamic> json, LoginResponse LoginResponse) {
    this.user = User.fromJson(json['user']);
  }

  LoginResponse.fromString(String data) {
    Map<String, dynamic> json = jsonDecode(data);
    print('data ${json['user']}');
    this.user = User.fromJson(json['user']);
    this.token = json['token'];
  }

  Map<String, dynamic> toJson() => {
        "user": user,
        "token": token,
      };

  @override
  String toString() {
    String userS = this.user.toString();
    print("user is $userS");
    return '{"user":$userS'
        '${token == null ? '' : ',"token":"$token"'}'
        '}';
  }
}
