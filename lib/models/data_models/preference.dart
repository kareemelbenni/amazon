import 'dart:convert';
import '/models/data_models/answer.dart';

import '../data_models/item.dart';

class Preference {
  String id;
  String name;
  String name_ar;
  String slug_name;
  String type;
  String list_answer_type;
  String order_id;
  List<Answer> answers=[];

  Preference(
    String id,
    String name,
    String name_ar,
    String slug_name,
    String type,
    String list_answer_type,
    String order_id,
    List<Answer> answers,
  ) {
    this.id = id;
    this.name = name;
    this.name_ar = name_ar;
    this.slug_name = slug_name;
    this.type = type;
    this.list_answer_type = list_answer_type;
    this.order_id = order_id;
    this.answers = answers;
  }

  Preference.fromitem() {
    this.id = '';
    this.name = '';
    this.name_ar = '';
    this.slug_name = '';
    this.type = '';
    this.list_answer_type = '';
    this.order_id = '';
    this.answers = [];
  }
  Preference.fromjson() {
    this.id = '';
    this.name = '';
    this.name_ar = '';
    this.slug_name = '';
    this.type = '';
    this.list_answer_type = '';
    this.order_id = '';
    this.answers = [];
  }

  Preference.fromJson(Map<String, dynamic> jsonn) {
    if (jsonn['answers'] != null) {
      Map<String, dynamic> jj = jsonn['answers'];
      // this.answers=(jsonn['answers'] as List).map((i) =>
      //         Answer.fromJson(i)).toList();
      // print(
      // "answerrr are ${jj.values}");
      jj.forEach((key, value) {
        print(value);
        this.answers.add(Answer.fromJson(value));
      });
      // print(
      // "answerrr are ${jsonn['answers']}");
      // this.answers = jj.values;
    }
    this.id = jsonn['_id'].toString()=="null"?"":jsonn['_id'].toString();
    this.name = jsonn['name'].toString()=="null"?"":jsonn['name'].toString();
    this.name_ar = jsonn['name_ar'].toString()=="null"?"":jsonn['name_ar'].toString();
    this.slug_name = jsonn['slug_name'].toString()=="null"?"":jsonn['slug_name'].toString();
    this.list_answer_type = jsonn['list_answer_type'].toString()=="null"?"":jsonn['list_answer_type'].toString();
    this.type = jsonn['type'].toString()=="null"?"":jsonn['type'].toString();
    this.order_id = jsonn['order_id'].toString()=="null"?"":jsonn['order_id'].toString();
    // this.answers = jsonn['answers'].toString();
  }

  Preference.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.id = json['_id'];
    this.name = json['name'];
    this.name_ar = json['name_ar'];
    this.slug_name = json['slug_name'];
    this.type = json['type'];
    this.list_answer_type = json['list_answer_type'];
    this.order_id = json['order_id'];
    this.answers = json['answers'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "name_ar": name_ar,
        "slug_name": slug_name,
        "type": type,
        "list_answer_type": list_answer_type,
        "order_id": order_id,
        "answers": answers,
      };
}
