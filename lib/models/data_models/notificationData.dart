import 'dart:convert';

class NotificationData {
  String id;
  String order_id;
  String type;
  String read;
  String title;
  String title_ar;
  String title_fr;
  String message;
  String message_ar;
  String message_fr;
  String created_at;

  NotificationData(
    String id,
    String order_id,
    String type,
    String read,
    String title,
    String title_ar,
    String title_fr,
    String message,
    String message_ar,
    String message_fr,
    String created_at,
  ) {
    this.id = id;
    this.order_id = order_id;
    this.type = type;
    this.read = read;
    this.title = title;
    this.title_ar = title_ar;
    this.title_fr = title_fr;
    this.message = message;
    this.message_ar = message_ar;
    this.message_fr = message_fr;
    this.created_at = created_at;
  }

  NotificationData.fromitem() {
    this.id = '';
    this.order_id = '';
    this.type = '';
    this.read = '';
    this.title = '';
    this.title_ar = '';
    this.title_fr = '';
    this.message = '';
    this.message_ar = '';
    this.message_fr = '';
    this.created_at = '';
  }
  NotificationData.fromjson() {
    this.id = '';
    this.order_id = '';
    this.type = '';
    this.read = '';
    this.title = '';
    this.title_ar = '';
    this.title_fr = '';
    this.message = '';
    this.message_ar = '';
    this.message_fr = '';
    this.created_at = '';
  }

  NotificationData.fromJson(Map<String, dynamic> json) {
    print("item json is $json");
    this.id = json['_id'].toString()=="null"?"":json['_id'].toString();
    this.order_id = json['order_id'].toString()=="null"?"":json['order_id'].toString();
    this.type = json['type'].toString()=="null"?"":json['type'].toString();
    this.read = json['read'].toString()=="null"?"":json['read'].toString();
    this.title = json['title'].toString()=="null"?"":json['title'].toString();
    this.title_ar = json['title_ar'].toString() == "null" ||
            json['title_ar'].toString() == "0"
        ? "-"
        : json['title_ar'].toString();
    this.message_ar = json['message_ar'].toString() == "null" ||
            json['message_ar'].toString() == "0"
        ? "-"
        : json['message_ar'].toString();
    this.title_fr = json['title_fr'].toString() == "null" ||
            json['title_fr'].toString() == "0"
        ? "-"
        : json['title_fr'].toString();

    this.message = json['message'].toString() == "null" ||
            json['message'].toString() == "0"
        ? "-"
        : json['message'].toString();
    this.message_fr = json['message_fr'].toString() == "null" ||
            json['message_fr'].toString() == "0"
        ? "-"
        : json['message_fr'].toString();
    this.created_at = json['created_at'].toString() == "null" ||
            json['created_at'].toString() == "0"
        ? "-"
        : json['created_at'].toString();
  }

  NotificationData.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.id = json['_id'];
    this.order_id = json['order_id'];
    this.type = json['type'];
    this.read = json['read'];
    this.title = json['title'];
    this.title_ar = json['title_ar'];
    this.title_fr = json['title_fr'];
    this.message = json['message'];
    this.message_ar = json['message_ar'];
    this.message_fr = json['message_fr'];
    this.created_at = json['created_at'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_id": order_id,
        "type": type,
        "read": read,
        "title": title,
        "title_ar": title_ar,
        "title_fr": title_fr,
        "message": message,
        "message_ar": message_ar,
        "message_fr": message_fr,
        "created_at": created_at,
      };
}
