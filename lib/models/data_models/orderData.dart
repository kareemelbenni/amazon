// import 'dart:convert';

// import 'event.dart';
// import '/models/data_models/orderDetails.dart';
// import '/models/data_models/status.dart';
// import '/models/data_models/user.dart';

// class OrderData {
//   String id;
//   String user_id;
//   String code;
//   String collection_date;
//   String delivery_date;
//   String express_order;
//   String total;
//   String sub_total;
//   String discount;
//   String folding;
//   String promo_discount;
//   String points;
//   String collection_en_route;
//   String delivery_en_route;
//   String payment_type;
//   String rate;
//   String delivery_charge;

//   Address collection_address;
//   Address delivery_address;
//   Status status;
//   User user;
//   List<OrderDetails> orderDetails = [];

//   OrderData(
//     String id,
//     String user_id,
//     String code,
//     String collection_date,
//     String delivery_date,
//     String express_order,
//     String total,
//     String sub_total,
//     String discount,
//     String folding,
//     String promo_discount,
//     String points,
//     String collection_en_route,
//     String delivery_en_route,
//     String payment_type,
//     String rate,
//     String delivery_charge,
//     Address collection_address,
//     Address delivery_address,
//     Status status,
//     User user,
//     List<OrderDetails> orderDetails,
//   ) {
//     this.id = id;
//     this.user_id = user_id;
//     this.code = code;
//     this.collection_date = collection_date;
//     this.delivery_date = delivery_date;
//     this.express_order = express_order;
//     this.total = total;
//     this.sub_total = sub_total;
//     this.discount = discount;
//     this.folding = folding;
//     this.promo_discount = promo_discount;
//     this.points = points;
//     this.rate = rate;
//     this.delivery_charge = delivery_charge;
//     this.collection_en_route = collection_en_route;
//     this.delivery_en_route = delivery_en_route;
//     this.payment_type = payment_type;
//     this.collection_address = collection_address;
//     this.delivery_address = delivery_address;
//     this.status = status;
//     this.user = user;
//     this.orderDetails = orderDetails;
//   }

//   OrderData.fromitem() {
//     this.id = '';
//     this.user_id = '';
//     this.code = '';
//     this.collection_date = '';
//     this.delivery_date = '';
//     this.express_order = '';
//     this.total = '';
//     this.sub_total = '';
//     this.discount = '';
//     this.folding = '';
//     this.promo_discount = '';
//     this.points = '';
//     this.rate = '';
//     this.delivery_charge = '';
//     this.collection_en_route = '';
//     this.delivery_en_route = '';
//     this.payment_type = '';
//     this.collection_address = null;
//     this.delivery_address = null;
//     this.status = null;
//     this.user = null;
//     this.orderDetails = [];
//   }
//   OrderData.fromjson() {
//     this.id = '';
//     this.user_id = '';
//     this.code = '';
//     this.collection_date = '';
//     this.delivery_date = '';
//     this.express_order = '';
//     this.total = '';
//     this.sub_total = '';
//     this.discount = '';
//     this.folding = '';
//     this.promo_discount = '';
//     this.points = '';
//     this.rate = '';
//     this.delivery_charge = '';
//     this.collection_en_route = '';
//     this.delivery_en_route = '';
//     this.payment_type = '';
//     this.collection_address = null;
//     this.delivery_address = null;
//     this.status = null;
//     this.user = null;
//     this.orderDetails = [];
//   }

//   OrderData.fromJson(Map<String, dynamic> json) {
//     print("item json is $json");
//     this.id = json['_id'].toString() == "null" ? "" : json['_id'].toString();
//     this.user_id =
//         json['user_id'].toString() == "null" ? "" : json['user_id'].toString();
//     this.code =
//         json['code'].toString() == "null" ? "" : json['code'].toString();
//     this.collection_en_route = json['collection_en_route'].toString() == "null"
//         ? "null"
//         : json['collection_en_route'].toString();
//     this.delivery_en_route = json['delivery_en_route'].toString() == "null"
//         ? "null"
//         : json['delivery_en_route'].toString();
//     this.payment_type = json['payment_type'].toString() == "null"
//         ? ""
//         : json['payment_type'].toString();
//     this.collection_date = json['collection_date'].toString() == "null"
//         ? ""
//         : json['collection_date'].toString();
//     this.delivery_date = json['delivery_date'].toString() == "null"
//         ? ""
//         : json['delivery_date'].toString();
//     this.rate =
//         json['rate'].toString() == "null" ? "" : json['rate'].toString();
//     this.express_order = json['express_order'].toString() == "null" ||
//             json['express_order'].toString() == "0"
//         ? "-"
//         : json['express_order'].toString();
//     this.delivery_charge = json['delivery_charge'].toString() == "null" ||
//             json['delivery_charge'].toString() == "0"
//         ? "-"
//         : json['delivery_charge'].toString();
//     this.discount = json['discount'].toString() == "null" ||
//             json['discount'].toString() == "0"
//         ? "-"
//         : json['discount'].toString();
//     this.total =
//         json['total'].toString() == "null" || json['total'].toString() == "0"
//             ? "-"
//             : json['total'].toString();

//     this.sub_total = json['sub_total'].toString() == "null" ||
//             json['sub_total'].toString() == "0"
//         ? "-"
//         : json['sub_total'].toString();
//     this.folding = json['folding'].toString() == "null" ||
//             json['folding'].toString() == "0"
//         ? "-"
//         : json['folding'].toString();
//     this.promo_discount = json['promo_discount'].toString() == "null" ||
//             json['promo_discount'].toString() == "0"
//         ? "-"
//         : json['promo_discount'].toString();
//     this.points =
//         json['points'].toString() == "null" || json['points'].toString() == "0"
//             ? "0"
//             : json['points'].toString();
//     if (json['collection_address'] != null)
//       this.collection_address = Address.fromJson(json['collection_address']);
//     if (json['delivery_address'] != null)
//       this.delivery_address = Address.fromJson(json['delivery_address']);
//     if (json['status'] != null) this.status = Status.fromJson(json['status']);
//     if (json['user'] != null) this.user = User.fromJson(json['user']);
//     if (json['orderDetails'] != null) {
//       for (int i = 0; i < json['orderDetails'].length; i++) {
//         this.orderDetails.add(OrderDetails.fromJson(json['orderDetails'][i]));
//       }
//     }
//   }

//   OrderData.fromString(String data) {
//     // prString('data $data');
//     Map<String, dynamic> json = jsonDecode(data);
//     this.id = json['_id'];
//     this.user_id = json['user_id'];
//     this.code = json['code'];
//     this.rate = json['rate'];
//     this.collection_en_route = json['collection_en_route'];
//     this.delivery_en_route = json['delivery_en_route'];
//     this.payment_type = json['payment_type'];
//     this.collection_date = json['collection_date'];
//     this.delivery_date = json['delivery_date'];
//     this.express_order = json['express_order'];
//     this.total = json['total'];
//     this.sub_total = json['sub_total'];
//     this.discount = json['discount'];
//     this.folding = json['folding'];
//     this.promo_discount = json['promo_discount'];
//     this.points = json['points'];
//     this.delivery_charge = json['delivery_charge'];
//     this.collection_address = Address.fromJson(json['collection_address']);
//     this.delivery_address = Address.fromJson(json['delivery_address']);
//     this.status = Status.fromJson(json['status']);
//     this.user = User.fromJson(json['user']);
//     if (json['orderDetails'] != null) {
//       for (int i = 0; i < json['orderDetails'].length; i++) {
//         this.orderDetails.add(OrderDetails.fromJson(json['orderDetails'][i]));
//       }
//     }
//   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "user_id": user_id,
//         "code": code,
//         "collection_date": collection_date,
//         "rate": rate,
//         "delivery_date": delivery_date,
//         "express_order": express_order,
//         "total": total,
//         "sub_total": sub_total,
//         "discount": discount,
//         "folding": folding,
//         "promo_discount": promo_discount,
//         "points": points,
//         "delivery_charge": delivery_charge,
//         "collection_en_route": collection_en_route,
//         "delivery_en_route": delivery_en_route,
//         "payment_type": payment_type,
//         "collection_address": collection_address,
//         "delivery_address": delivery_address,
//         "status": status,
//         "user": user,
//         "orderDetails": orderDetails,
//       };
// }
