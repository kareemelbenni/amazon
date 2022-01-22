import 'dart:convert';
// import 'package:geolocator/geolocator.dart';

import '../data_models/item.dart';

// String _currentAddress;

class Event {
  String id;
  String phone;
  String email;
  String phone_number;
  String company_name;
  String event_id;
  String main_photo;
  String name;
  String start_date;
  String start_time;
  String address;
  String action_label;
  String is_favorite;
  String lat;
  String lng;
  String url;
  String event_date;
  String description;
  String distance;

  Event(
    String id,
    String phone,
    String email,
    String phone_number,
    String company_name,
    String event_id,
    String main_photo,
    String name,
    String start_date,
    String start_time,
    String address,
    String action_label,
    String is_favorite,
    String lat,
    String lng,
    String url,
    String event_date,
    String description,
    String distance,
  ) {
    this.id = id;
    this.phone = phone;
    this.email = email;
    this.phone_number = phone_number;
    this.company_name = company_name;
    this.event_id = event_id;
    this.main_photo = main_photo;
    this.name = name;
    this.start_date = start_date;
    this.start_time = start_time;
    this.address = address;
    this.action_label = action_label;
    this.is_favorite = is_favorite;
    this.lat = lat;
    this.lng = lng;
    this.url = url;
    this.event_date = event_date;
    this.description = description;
    this.distance = distance;
  }

  Event.fromitem() {
    this.id = '';
    this.phone = '';
    this.email = '';
    this.phone_number = '';
    this.company_name = '';
    this.event_id = '';
    this.main_photo = '';
    this.name = '';
    this.start_date = '';
    this.start_time = '';
    this.address = '';
    this.action_label = '';
    this.is_favorite = '';
    this.lat = '';
    this.lng = '';
    this.url = '';
    this.event_date = '';
    this.description = '';
    this.distance = '';
  }
  Event.fromjson() {
    this.id = '';
    this.phone_number = '';
    this.email = '';
    this.company_name = '';
    this.event_id = '';
    this.main_photo = '';
    this.name = '';
    this.start_date = '';
    this.start_time = '';
    this.address = '';
    this.action_label = '';
    this.is_favorite = '';
    this.lat = '';
    this.lng = '';
    this.url = '';
    this.event_date = '';
    this.description = '';
    this.distance = '';
  }

  Event.fromJson(Map<String, dynamic> json) {
    print("category is $json");

    this.id = json['_id'].toString() == "null" ? "" : json['_id'].toString();
    this.email =
        json['email'].toString() == "null" ? "" : json['email'].toString();
    this.phone =
        json['phone'].toString() == "null" ? "" : json['phone'].toString();
    this.phone_number = json['phone_number'].toString() == "null"
        ? ""
        : json['phone_number'].toString();
    this.company_name = json['company_name'].toString() == "null"
        ? ""
        : json['company_name'].toString();
    this.event_id = json['event_id'].toString() == "null"
        ? ""
        : json['event_id'].toString();
    this.main_photo = json['main_photo'].toString() == "null"
        ? ""
        : json['main_photo'].toString();
    this.name =
        json['name'].toString() == "null" ? "" : json['name'].toString();
    this.start_date = json['start_date'].toString() == "null"
        ? ""
        : json['start_date'].toString();
    this.start_time = json['start_time'].toString() == "null"
        ? ""
        : json['start_time'].toString();
    this.address =
        json['address'].toString() == "null" ? "" : json['address'].toString();
    this.action_label = json['action_label'].toString() == "null"
        ? ""
        : json['action_label'].toString();
    this.is_favorite = json['is_favorite'].toString() == "null"
        ? ""
        : json['is_favorite'].toString();
    try {
      this.lat = json['location'][0].toString() == "null"
          ? ""
          : json['location'][0].toString();
      this.lng = json['location'][1].toString() == "null"
          ? ""
          : json['location'][1].toString();
    } catch (e) {
      this.lat = json['lat'].toString() == "null"
          ? ""
          : json['lat'].toString();
      this.lng = json['lng'].toString() == "null"
          ? ""
          : json['lng'].toString();
    }

    this.url = json['url'].toString() == "null" ? "" : json['url'].toString();
    this.event_date = json['event_date'].toString() == "null"
        ? ""
        : json['event_date'].toString();
    this.description = json['description'].toString() == "null"
        ? ""
        : json['description'].toString();
    this.distance = json['distance'].toString() == "null"
        ? ""
        : json['distance'].toString();
  }

  Event.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.id = json['_id'];
    this.phone = json['phone'];
    this.email = json['email'];
    this.phone_number = json['phone_number'];
    this.company_name = json['company_name'];
    this.event_id = json['event_id'];
    this.main_photo = json['main_photo'];
    this.name = json['name'];
    this.start_date = json['start_date'];
    this.start_time = json['start_time'];
    this.address = json['address'];
    this.action_label = json['action_label'];
    this.is_favorite = json['is_favorite'];
    this.lat = json['location'][0];
    this.lng = json['location'][1];
    this.url = json['url'];
    this.event_date = json['event_date'];
    this.description = json['description'];
    this.distance = json['distance'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "phone": phone,
        "email": email,
        "phone_number": phone_number,
        "company_name": company_name,
        "event_id": event_id,
        "main_photo": main_photo,
        "name": name,
        "start_date": start_date,
        "start_time": start_time,
        "address": address,
        "action_label": action_label,
        "is_favorite": is_favorite,
        "lat": lat,
        "lng": lng,
        "url": url,
        "event_date": event_date,
        "description": description,
        "distance": distance,
      };
}
