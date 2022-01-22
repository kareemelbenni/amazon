import 'dart:convert';

import '/data/local/sharedPreferences/shared_preferences_helper.dart';

import 'notificationData.dart';

class NotificationResponse {
  List<NotificationData> data = [];
  String current_page;
  String last_page;

  NotificationResponse(
    List<NotificationData> data,
    String current_page,
    String last_page,
  ) {
    this.data = data;
    this.current_page = current_page;
    this.last_page = last_page;
  }

  NotificationResponse.fromitem() {
    this.data = null;
    this.current_page = '';
    this.last_page = '';
  }
  NotificationResponse.fromjson() {
    this.data = null;
    this.current_page = '';
    this.last_page = '';
  }

  NotificationResponse.fromJson(Map<String, dynamic> json) {
    print('data ${json['data']}');
    if (json['data'] != null) {
      for (int i = 0; i < json['data'].length; i++) {
        this.data.add(NotificationData.fromJson(json['data'][i]));
      }
    }
    this.current_page = json['current_page'].toString()=="null"?"":json['current_page'].toString();
    this.last_page = json['last_page'].toString()=="null"?"":json['last_page'].toString();
  }

  NotificationResponse.fromString(String data) {
    Map<String, dynamic> json = jsonDecode(data);
    print('data ${json['data']}');
    if (json['data'] != null) {
      for (int i = 0; i < json['data'].length; i++) {
        this.data.add(NotificationData.fromJson(json['data'][i]));
      }
    }

    this.current_page = json['current_page'];
    this.last_page = json['last_page'];
  }

  Map<String, dynamic> toJson() => {
        "data": data,
        "current_page": current_page,
        "last_page": last_page,
      };

  @override
  String toString() {
    String userS = this.data.toString();
    print("data is $userS");
    return '{"data":$userS'
        '${current_page == null ? '' : ',"current_page":"$current_page"'}'
        '${last_page == null ? '' : ',"last_page":"$last_page"'}'
        '}';
  }
}
