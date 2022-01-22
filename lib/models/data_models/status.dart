import 'dart:convert';

class Status {
  String id;
  String slug_name;
  String updated_at;
  String created_at;
  String order_id;
  String name;

  Status(
    String id,
    String slug_name,
    String updated_at,
    String created_at,
    String order_id,
    String name,
  ) {
    this.id = id;
    this.slug_name = slug_name;
    this.updated_at = updated_at;
    this.created_at = created_at;
    this.order_id = order_id;
    this.name = name;
  }

  Status.fromitem() {
    this.id = '';
    this.slug_name = '';
    this.updated_at = '';
    this.created_at = '';
    this.order_id = '';
    this.name = '';
  }
  Status.fromjson() {
    this.id = '';
    this.slug_name = '';
    this.updated_at = '';
    this.created_at = '';
    this.order_id = '';
    this.name = '';
  }

  Status.fromJson(Map<String, dynamic> json) {
    this.id = json['_id'].toString()=="null"?"":json['_id'].toString();
    this.slug_name = json['slug_name'].toString()=="null"?"":json['slug_name'].toString();
    this.updated_at = json['updated_at'].toString()=="null"?"":json['updated_at'].toString();
    this.created_at = json['created_at'].toString()=="null"?"":json['created_at'].toString();
    this.order_id = json['order_id'].toString()=="null"?"":json['order_id'].toString();
    this.name = json['name'].toString()=="null"?"":json['name'].toString();
  }

  Status.fromJson2(Map<String, dynamic> json) {
    this.id = json['id'].toString()=="null"?"":json['id'].toString();
    this.slug_name = json['slug_name'].toString()=="null"?"":json['slug_name'].toString();
    this.updated_at = json['updated_at'].toString()=="null"?"":json['updated_at'].toString();
    this.created_at = json['created_at'].toString()=="null"?"":json['created_at'].toString();
    this.order_id = json['order_id'].toString()=="null"?"":json['order_id'].toString();
    this.name = json['name'].toString()=="null"?"":json['name'].toString();
  }

  Status.fromString(String data) {
    // print('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.id = json['_id'];
    this.slug_name = json['slug_name'];
    this.updated_at = json['updated_at'];
    this.created_at = json['created_at'];
    this.order_id = json['order_id'];
    this.name = json['name'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug_name": slug_name,
        "updated_at": updated_at,
        "created_at": created_at,
        "order_id": order_id,
        "name": name,
      };

  @override
  String toString() {
    return '{"id":"$id"'
        // '${id == null ? '' : ',"id":"$id"'}'
        '${slug_name == null ? '' : ',"slug_name":"$slug_name"'}'
        '${updated_at == null ? '' : ',"updated_at":"$updated_at"'}'
        '${created_at == null ? '' : ',"created_at":"$created_at"'}'
        '${order_id == null ? '' : ',"order_id":"$order_id"'}'
        '${name == null ? '' : ',"name":"$name"'}'
        '}';
  }
}
