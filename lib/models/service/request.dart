

import '/utils/app_constant.dart';

class RequestModel {
  var url;
  Map<String, String> headers;
  var body;

  RequestModel() {
    this.url = "${AppConstant().apiUrl}";
    this.headers = {};
    this.headers.putIfAbsent('Accept', () {
      return 'application/json';
    });    
    // this.headers.putIfAbsent('Content-Type', () {
    //   return 'multipart/form-data';
    // });
  }

  putAccessToken(String accessToken) {
    this.headers.putIfAbsent('Authorization', () {
      return 'Bearer $accessToken';
    });
  }

    putLanguage(String language) {
    this.headers.putIfAbsent('Accept-Language', () {
      return language;
    });
  }

  @override
  String toString() {
    return '{url: $url, headers: $headers, body: $body}';
  }
}
