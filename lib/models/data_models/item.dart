import 'dart:convert';

import '/models/data_models/preference.dart';

class Item {
  String id;
  String name;
  String emblem;
  String description;
  String category_id;
  String price_p;
  String price_pw;
  String price_dc;
  String price_p_e;
  String price_dc_e;
  String price_folding;
  String description_ar;
  String name_ar;
  String price_pw_e;
  String is_home_service;
  String image_required;
  List<Preference> questions = [];

  Item(
    String id,
    String name,
    String emblem,
    String description,
    String category_id,
    String price_p,
    String price_pw,
    String price_dc,
    String price_p_e,
    String price_dc_e,
    String price_folding,
    String description_ar,
    String name_ar,
    String price_pw_e,
    String is_home_service,
    String image_required,
    List<Preference> questions,
  ) {
    this.id = id;
    this.name = name;
    this.emblem = emblem;
    this.description = description;
    this.category_id = category_id;
    this.price_p = price_p;
    this.price_pw = price_pw;
    this.price_dc = price_dc;
    this.price_p_e = price_p_e;
    this.price_dc_e = price_dc_e;
    this.price_folding = price_folding;
    this.description_ar = description_ar;
    this.name_ar = name_ar;
    this.price_pw_e = price_pw_e;
    this.is_home_service = is_home_service;
    this.image_required = image_required;
    this.questions = questions;
  }

  Item.fromitem() {
    this.id = '';
    this.name = '';
    this.emblem = '';
    this.description = '';
    this.category_id = '';
    this.price_p = '';
    this.price_pw = '';
    this.price_dc = '';
    this.price_p_e = '';
    this.price_dc_e = '';
    this.price_folding = '';
    this.description_ar = '';
    this.name_ar = '';
    this.price_pw_e = '';
    this.is_home_service = '';
    this.image_required = '';
    this.questions = [];
  }
  Item.fromjson() {
    this.id = '';
    this.name = '';
    this.emblem = '';
    this.description = '';
    this.category_id = '';
    this.price_p = '';
    this.price_pw = '';
    this.price_dc = '';
    this.price_p_e = '';
    this.price_dc_e = '';
    this.price_folding = '';
    this.description_ar = '';
    this.name_ar = '';
    this.price_pw_e = '';
    this.is_home_service = '';
    this.image_required = '';
    this.questions = [];
  }

  Item.fromJson(Map<String, dynamic> json) {
    print("item json is $json");
    this.id = json['_id'].toString()=="null"?"":json['_id'].toString();
    this.name = json['name'].toString()=="null"?"":json['name'].toString();
    this.emblem = json['emblem'].toString()=="null"?"":json['emblem'].toString();
    this.description = json['description'].toString()=="null"?"":json['description'].toString();
    this.category_id = json['category_id'].toString()=="null"?"":json['category_id'].toString();
    this.price_p = json['price_p'].toString() == "null" ||
            json['price_p'].toString() == "0"
        ? "-"
        : json['price_p'].toString();
    this.price_p_e = json['price_p_e'].toString() == "null" ||
            json['price_p_e'].toString() == "0"
        ? "-"
        : json['price_p_e'].toString();
    this.price_pw = json['price_pw'].toString() == "null" ||
            json['price_pw'].toString() == "0"
        ? "-"
        : json['price_pw'].toString();
    this.price_pw_e = json['price_pw_e'].toString() == "null" ||
            json['price_pw_e'].toString() == "0"
        ? "-"
        : json['price_pw_e'].toString();
    this.price_dc = json['price_dc'].toString() == "null" ||
            json['price_dc'].toString() == "0"
        ? "-"
        : json['price_dc'].toString();
    this.price_dc_e = json['price_dc_e'].toString() == "null" ||
            json['price_dc_e'].toString() == "0"
        ? "-"
        : json['price_dc_e'].toString();
    this.price_folding = json['price_folding'].toString() == "null" ||
            json['price_folding'].toString() == "0"
        ? "-"
        : json['price_folding'].toString();
    this.description_ar = json['description_ar'].toString()=="null"?"":json['description_ar'].toString();
    this.name_ar = json['name_ar'].toString()=="null"?"":json['name_ar'].toString();
    this.image_required = json['image_required'].toString()=="null"?"":json['image_required'].toString();
    this.is_home_service = json['is_home_service'].toString() == "null"
        ? "false"
        : json['is_home_service'].toString();
    if (json['questions'] != null) {
      for (int i = 0; i < json['questions'].length; i++) {
        this.questions.add(Preference.fromJson(json['questions'][i]));
      }
    }
  }

  Item.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.id = json['_id'];
    this.name = json['name'];
    this.emblem = json['emblem'];
    this.description = json['description'];
    this.category_id = json['category_id'];
    this.price_p = json['price_p'];
    this.price_pw = json['price_pw'];
    this.price_dc = json['price_dc'];
    this.price_p_e = json['price_p_e'];
    this.price_dc_e = json['price_dc_e'];
    this.price_folding = json['price_folding'];
    this.description_ar = json['description_ar'];
    this.name_ar = json['name_ar'];
    this.price_pw_e = json['price_pw_e'];
    this.is_home_service = json['is_home_service'];
    this.image_required = json['image_required'];
    if (json['questions'] != null) {
      for (int i = 0; i < json['questions'].length; i++) {
        this.questions.add(Preference.fromJson(json['questions'][i]));
      }
    }
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "emblem": emblem,
        "description": description,
        "category_id": category_id,
        "price_p": price_p,
        "price_pw": price_pw,
        "price_dc": price_dc,
        "price_p_e": price_p_e,
        "price_dc_e": price_dc_e,
        "price_folding": price_folding,
        "description_ar": description_ar,
        "name_ar": name_ar,
        "price_pw_e": price_pw_e,
        "is_home_service": is_home_service,
        "image_required": image_required,
        "questions": questions,
      };
}
