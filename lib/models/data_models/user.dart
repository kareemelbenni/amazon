import 'dart:convert';

import '/models/data_models/status.dart';


class User {
  String id;
  String name;
  String username;
  String email;
  String role_id;
  String updated_at;
  String created_at;
  String first_name;
  String last_name;
  String bio;
  String photo;
  String is_approved;
  // Map<String, dynamic> preferences;

  User(
    String id,
    String name,
    String username,
    String email,
    String role_id,
    String updated_at,
    String created_at,
    String first_name,
    String last_name,
    String bio,
    String photo,
    String is_approved,

  ) {
    this.id = id;
    this.name = name;
    this.username = username;
    this.email = email;
    this.role_id = role_id;
    this.updated_at = updated_at;
    this.created_at = created_at;
    this.first_name = first_name;
    this.last_name = last_name;
    this.bio = bio;
    this.photo = photo;
    this.is_approved = is_approved;
  }

  User.fromjson() {
    this.id = 'id';
    this.name = 'name';
    this.username = 'username';
    this.email = 'email';
    this.role_id = 'role_id';
    this.updated_at = 'updated_at';
    this.created_at = 'created_at';
    this.first_name = 'first_name';
    this.last_name = 'last_name';
    this.bio = 'bio';
    this.photo = 'photo';
    this.is_approved = 'is_approved';

  }

  User.fromJson(Map<String, dynamic> json) {
    print("json is $json");
    // print("user from json is ${json['preferences']}");
    Map<String, dynamic> preferencess;

    this.id = json['_id'].toString()=="null"?"":json['_id'].toString();
    this.name = json['name'].toString()=="null"?"":json['name'].toString();
    this.username = json['username'].toString()=="null"?"":json['username'].toString();
    this.email = json['email'].toString()=="null"?"":json['email'].toString();
    this.role_id = json['role_id'].toString()=="null"?"":json['role_id'].toString();
    this.updated_at = json['updated_at'].toString()=="null"?"":json['updated_at'].toString();
    this.created_at = json['created_at'].toString()=="null"?"":json['created_at'].toString();
    this.first_name = json['first_name'].toString()=="null"?"":json['first_name'].toString();
    this.last_name = json['last_name'].toString()=="null"?"":json['last_name'].toString();
    this.bio = json['bio'].toString()=="null"?"":json['bio'].toString();
    this.photo = json['photo'].toString()=="null"?"":json['photo'].toString();
    this.is_approved = json['is_approved'].toString()=="null"?"":json['is_approved'].toString();

  }

  User.fromString(String data) {
    // print('data $data');
    Map<String, dynamic> json = jsonDecode(data);

    this.id = json['_id'];
    this.name = json['name'];
    this.username = json['username'];
    this.email = json['email'];
    this.role_id = json['role_id'];
    this.updated_at = json['updated_at'];
    this.created_at = json['created_at'];
    this.first_name = json['first_name'];
    this.last_name = json['last_name'];
    this.bio = json['bio'];
    this.photo = json['photo'];
    this.is_approved = json['is_approved'];

  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "role_id": role_id,
        "updated_at": updated_at,
        "created_at": created_at,
        "first_name": first_name,
        "last_name": last_name,
        "bio": bio,
        "photo": photo,
        "is_approved": is_approved,

      };

  @override
  String toString() {

    return '{"_id":"$id"'
        // '${id == null ? '' : ',"id":"$id"'}'
        '${name == null ? '' : ',"name":"$name"'}'
        '${username == null ? '' : ',"username":"$username"'}'
        '${email == null ? '' : ',"email":"$email"'}'
        '${role_id == null ? '' : ',"role_id":"$role_id"'}'
        '${updated_at == null ? '' : ',"updated_at":"$updated_at"'}'
        '${created_at == null ? '' : ',"created_at":"$created_at"'}'
        '${first_name == null ? '' : ',"first_name":"$first_name"'}'
        '${last_name == null ? '' : ',"last_name":"$last_name"'}'
        '${bio == null ? '' : ',"bio":"$bio"'}'
        '${photo == null ? '' : ',"photo":"$photo"'}'
        '${is_approved == null ? '' : ',"is_approved":"$is_approved"'}'

        '}';
  }
}
