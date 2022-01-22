import 'dart:convert';

import '/data/local/sharedPreferences/shared_preferences_helper.dart';
import '/models/data_models/user.dart';

class PromoCodeResponse {
  String percentage;
  String code;

  PromoCodeResponse(
    String percentage,
    String code,
  ) {
    this.percentage = percentage;
    this.code = code;
  }

  PromoCodeResponse.fromitem() {
    this.percentage = '';
    this.code = '';
  }
  PromoCodeResponse.fromjson() {
    this.percentage = '';
    this.code = '';
  }

  PromoCodeResponse.fromJson(Map<String, dynamic> json) {
    print("json of code is ${json['promo_code']['code']}");
    this.percentage = json['promo_code']['percentage'].toString()=="null"?"":json['promo_code']['percentage'].toString();
    this.code = json['promo_code']['code'].toString()=="null"?"":json['promo_code']['code'].toString();
  }

  PromoCodeResponse.fromJson2(
      Map<String, dynamic> json, PromoCodeResponse checkPhoneResponse) {
    this.percentage = checkPhoneResponse.percentage;
    this.code = checkPhoneResponse.code;
  }

  PromoCodeResponse.fromString(String data) {
    Map<String, dynamic> json = jsonDecode(data);

    this.percentage = json['percentage'];
    this.code = json['code'];
  }

  Map<String, dynamic> toJson() => {
        "percentage": percentage,
        "code": code,
      };

  // @override
  // String toString() {
  //   return '{"percentage":$percentage'
  //       '}';
  // }
}
