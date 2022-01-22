import 'dart:convert';
import '../data_models/item.dart';

class Country {
  String id;
  String name;
  String slug;
  String code;
  String nationality;
  String flag;
  String is_active;

  Country(
    String id,
    String name,
    String slug,
    String code,
    String nationality,
    String flag,
    String is_active,
  ) {
    this.id = id;
    this.name = name;
    this.slug = slug;
    this.code = code;
    this.nationality = nationality;
    this.flag = flag;
    this.is_active = is_active;
  }

  Country.fromitem() {
    this.id = '';
    this.name = '';
    this.slug = '';
    this.code = '';
    this.nationality = '';
    this.flag = '';
    this.is_active = "false";
  }
  Country.fromjson() {
    this.id = '';
    this.name = '';
    this.slug = '';
    this.code = '';
    this.nationality = '';
    this.flag = '';
    this.is_active = "false";
  }

  Country.fromJson(Map<String, dynamic> json) {
    print("category is $json");
    this.id = json['_id'].toString() == "null" ? "" : json['_id'].toString();
    this.name =
        json['name'].toString() == "null" ? "" : json['name'].toString();
    this.slug =
        json['slug'].toString() == "null" ? "" : json['slug'].toString();
    this.code =
        json['code'].toString() == "null" ? "" : json['code'].toString();
    this.nationality = json['nationality'].toString() == "null"
        ? ""
        : json['nationality'].toString();
    this.flag =
        json['flag'].toString() == "null" ? "" : json['flag'].toString();
    this.is_active =
        json['is_active'].toString() == "null" ? "false" : json['is_active'].toString();
  }

  Country.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.id = json['_id'];
    this.name = json['name'];
    this.slug = json['slug'];
    this.code = json['code'];
    this.nationality = json['nationality'];
    this.flag = json['flag'];
    this.is_active = json['is_active'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "code": code,
        "nationality": nationality,
        "flag": flag,
        "is_active": is_active,
      };
}
