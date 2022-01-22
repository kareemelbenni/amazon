import 'dart:convert';

import '/models/data_models/preference.dart';

class Product {
  String asin;
  String title;
  String image;
  String price;
  String currency;

  Product(
    String asin,
    String title,
    String image,
    String price,
    String currency,
  ) {
    this.asin = asin;
    this.title = title;
    this.image = image;
    this.price = price;
    this.currency = currency;
  }

  Product.fromProduct() {
    this.asin = '';
    this.title = '';
    this.image = '';
    this.price = '';
    this.currency = '';
  }
  Product.fromjson() {
    this.asin = '';
    this.title = '';
    this.image = '';
    this.price = '';
    this.currency = '';
  }

  Product.fromJson(Map<String, dynamic> json) {
    print("Product json is $json");
    this.asin =
        json['asin'].toString() == "null" ? "" : json['asin'].toString();
    this.title =
        json['title'].toString() == "null" ? "" : json['title'].toString();
    this.image =
        json['image'].toString() == "null" ? "" : json['image'].toString();
    this.price = json['prices']['current_price'].toString() == "null"
        ? ""
        : json['prices']['current_price'].toString();
    this.currency = json['prices']['currency'].toString() == "null"
        ? ""
        : json['prices']['currency'].toString();
  }

  Product.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.asin = json['asin'];
    this.title = json['title'];
    this.image = json['image'];
    this.price = json['price']['current_price'];
    this.currency = json['prices']['currency'];
  }

  Map<String, dynamic> toJson() => {
        "asin": asin,
        "title": title,
        "image": image,
        "price": price,
        "currency": currency,
      };
}
