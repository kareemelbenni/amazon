import 'dart:convert';

class BaseResponse {
  String message;

  BaseResponse();

  BaseResponse.newItem();

  BaseResponse.fromJson(Map<String, dynamic> json) {
    this.message = json['message'];
  }

  BaseResponse.fromString(String data) {
    Map<String, dynamic> json = jsonDecode(data);
    this.message = json['message'];
  }
}
