import 'dart:convert';
import '../data_models/item.dart';

class Answer {
  String en;
  String ar;

  Answer(
    String en,
    String ar,
  ) {
    this.en = en;
    this.ar = ar;
  }

  Answer.fromitem() {
    this.en = '';
    this.ar = '';
  }
  Answer.fromjson() {
    this.en = '';
    this.ar = '';
  }

  Answer.fromJson(Map<String, dynamic> json) {
    print("category is $json");

    this.en = json['en'].toString()=="null"?"":json['en'].toString();
    this.ar = json['ar'].toString()=="null"?"":json['ar'].toString();
  }

  Answer.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);

    this.en = json['en'];
    this.ar = json['ar'];
  }

  Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
      };
}
