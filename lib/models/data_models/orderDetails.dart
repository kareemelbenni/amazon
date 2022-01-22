import 'dart:convert';

import 'event.dart';
import '/models/data_models/status.dart';
import '/models/data_models/item.dart';

class OrderDetails {
  String quantity;
  String price;
  String item_type;
  String folding_total;
  String discount_total;
  String express_order;
  String total;
  String sub_total;
  String discount;
  String folding;

  Item item;

  OrderDetails(
    String quantity,
    String price,
    String item_type,
    String folding_total,
    String discount_total,
    String express_order,
    String total,
    String sub_total,
    String discount,
    String folding,
    Item item,
  ) {
    this.quantity = quantity;
    this.price = price;
    this.item_type = item_type;
    this.folding_total = folding_total;
    this.discount_total = discount_total;
    this.express_order = express_order;
    this.total = total;
    this.sub_total = sub_total;
    this.discount = discount;
    this.folding = folding;

    this.item = item;
  }

  OrderDetails.fromitem() {
    this.quantity = '';
    this.price = '';
    this.item_type = '';
    this.folding_total = '';
    this.discount_total = '';
    this.express_order = '';
    this.total = '';
    this.sub_total = '';
    this.discount = '';
    this.folding = '';

    this.item = null;
  }
  OrderDetails.fromjson() {
    this.quantity = '';
    this.price = '';
    this.item_type = '';
    this.folding_total = '';
    this.discount_total = '';
    this.express_order = '';
    this.total = '';
    this.sub_total = '';
    this.discount = '';
    this.folding = '';

    this.item = null;
  }

  OrderDetails.fromJson(Map<String, dynamic> json) {
    print("item json is $json");
    this.quantity = json['quantity'].toString()=="null"?"":json['quantity'].toString();
    this.price = json['price'].toString()=="null"?"":json['price'].toString();
    this.item_type = json['item_type'].toString()=="null"?"":json['item_type'].toString();
    this.folding_total = json['folding_total'].toString()=="null"?"":json['folding_total'].toString();
    this.discount_total = json['discount_total'].toString()=="null"?"":json['discount_total'].toString();
    this.express_order = json['express_order'].toString() == "null" ||
            json['express_order'].toString() == "0"
        ? "-"
        : json['express_order'].toString();
    this.discount = 
            json['discount'].toString() 
        ;
    this.total =
        json['total'].toString() == "null" || json['total'].toString() == "0"
            ? "-"
            : json['total'].toString();

    this.sub_total = json['sub_total'].toString() == "null" ||
            json['sub_total'].toString() == "0"
        ?"-"
        : json['sub_total'].toString();
    this.folding = json['folding'].toString() == "null" ||
            json['folding'].toString() == "0"
        ? "-"
        : json['folding'].toString();

    if (json['item'] != null) this.item = Item.fromJson(json['item']);
  }

  OrderDetails.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.quantity = json['_quantity'];
    this.price = json['price'];
    this.item_type = json['item_type'];
    this.folding_total = json['folding_total'];
    this.discount_total = json['discount_total'];
    this.express_order = json['express_order'];
    this.total = json['total'];
    this.sub_total = json['sub_total'];
    this.discount = json['discount'];
    this.folding = json['folding'];

    this.item = Item.fromJson(json['item']);
  }

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "price": price,
        "item_type": item_type,
        "folding_total": folding_total,
        "discount_total": discount_total,
        "express_order": express_order,
        "total": total,
        "sub_total": sub_total,
        "discount": discount,
        "folding": folding,
        "item": item,
      };
}
