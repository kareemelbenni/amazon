import 'dart:convert';
import '../data_models/item.dart';

class OrganizerType {
  String id;
  String name;
  String slug;

  OrganizerType(
    String id,
    String name,
    String slug,
  ) {
    this.id = id;
    this.name = name;
    this.slug = slug;
  }

  OrganizerType.fromitem() {
    this.id = '';
    this.name = '';
    this.slug = '';
  }
  OrganizerType.fromjson() {
    this.id = '';
    this.name = '';
    this.slug = '';
  }

  OrganizerType.fromJson(Map<String, dynamic> json) {
    print("category is $json");
    this.id = json['_id'].toString() == "null" ? "" : json['_id'].toString();
    this.name =
        json['name'].toString() == "null" ? "" : json['name'].toString();
    this.slug =
        json['slug'].toString() == "null" ? "" : json['slug'].toString();
  }

  OrganizerType.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.id = json['_id'];
    this.name = json['name'];
    this.slug = json['slug'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
      };
}
