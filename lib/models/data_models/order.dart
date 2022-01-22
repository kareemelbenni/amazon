import 'dart:convert';

import '/models/data_models/order_items.dart';

class Order {
  List<OrderItems> items = [];

  Order(
    List<OrderItems> items,
  ) {
    this.items = items;
  }

  Order.fromitem() {
    this.items = [];
  }
  Order.fromjson() {
    this.items = [];
  }

  Order.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      for (int i = 0; i < json['items'].length; i++) {
        this.items.add(OrderItems.fromJson(json['items'][i]));
      }
    }
  }

  Order.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);

    if (json['items'] != null) {
      for (int i = 0; i < json['items'].length; i++) {
        this.items.add(OrderItems.fromJson(json['items'][i]));
      }
    }
  }

  Map<String, dynamic> toJson() => {
        "items": items,
      };

  @override
  String toString() {
    // String items = this.items.toString();
    // print("user is $userS");
    return '{"items":$items'
        '}';
  }
}
