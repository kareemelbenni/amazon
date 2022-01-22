// import 'dart:convert';
// import '/models/data_models/orderData.dart';

// import '../data_models/item.dart';

// class Dashboard {
//   String total_month_collection;
//   String total_month_delivery;
//   String today_collection;
//   String today_delivery;
//   OrderData current_order;

//   Dashboard(
//     String total_month_collection,
//     String total_month_delivery,
//     String today_collection,
//     String today_delivery,
//     OrderData current_order,
//   ) {
//     this.total_month_collection = total_month_collection;
//     this.total_month_delivery = total_month_delivery;
//     this.today_collection = today_collection;
//     this.today_delivery = today_delivery;
//     this.current_order = current_order;
//   }

//   Dashboard.fromitem() {
//     this.total_month_collection = '';
//     this.total_month_delivery = '';
//     this.today_collection = '';
//     this.today_delivery = '';
//     this.current_order = null;
//   }
//   Dashboard.fromjson() {
//     this.total_month_collection = '';
//     this.total_month_delivery = '';
//     this.today_collection = '';
//     this.today_delivery = '';
//     this.current_order = null;
//   }

//   Dashboard.fromJson(Map<String, dynamic> json) {
//     print("category is $json");
//     this.total_month_collection = json['total_month_collection'].toString().length==1?"0${json['total_month_collection'].toString()}":json['total_month_collection'].toString();
//     this.total_month_delivery = json['total_month_delivery'].toString().length==1?"0${json['total_month_delivery'].toString()}":json['total_month_delivery'].toString();
//     this.today_collection = json['today_collection'].toString().length==1?"0${json['today_collection'].toString()}":json['today_collection'].toString();
//     this.today_delivery = json['today_delivery'].toString().length==1?"0${json['today_delivery'].toString()}":json['today_delivery'].toString();
//     if(json['current_order']!=null)
//     this.current_order = OrderData.fromJson(json['current_order']);
//   }

//   Dashboard.fromString(String data) {
//     // prString('data $data');
//     Map<String, dynamic> json = jsonDecode(data);
//     this.total_month_collection = json['total_month_collection'];
//     this.total_month_delivery = json['total_month_delivery'];
//     this.today_collection = json['today_collection'];
//     this.today_delivery = json['today_delivery'];
//     this.current_order = OrderData.fromJson(json['current_order']);
//   }

//   Map<String, dynamic> toJson() => {
//         "total_month_collection": total_month_collection,
//         "total_month_delivery": total_month_delivery,
//         "today_collection": today_collection,
//         "today_delivery": today_delivery,
//         "current_order": current_order,
//       };
// }
