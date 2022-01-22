import 'dart:convert';

class OrderItems {
  String subcatid;
  String subcatname;
  String subcatnamear;
  String quantity_p;
  String price_p;
  String quantity_p_e;
  String price_p_e;
  String quantity_pw;
  String price_pw;
  String quantity_pw_e;
  String price_pw_e;
  String quantity_dc;
  String price_dc;
  String quantity_dc_e;
  String price_dc_e;
  bool with_folding;
  String price_folding;

  OrderItems(
    String subcatid,
    String subcatname,
    String subcatnamear,
    String quantity_p,
    String price_p,
    String quantity_p_e,
    String price_p_e,
    String quantity_pw,
    String price_pw,
    String quantity_pw_e,
    String price_pw_e,
    String quantity_dc,
    String price_dc,
    String quantity_dc_e,
    String price_dc_e,
    bool with_folding,
    String price_folding,
  ) {
    this.subcatid = subcatid;
    this.subcatname = subcatname;
    this.subcatnamear = subcatnamear;
    this.quantity_p = quantity_p;
    this.price_p = price_p;
    this.quantity_p_e = quantity_p_e;
    this.price_p_e = price_p_e;
    this.quantity_pw = quantity_pw;
    this.price_pw = price_pw;
    this.quantity_pw_e = quantity_pw_e;
    this.price_pw_e = price_pw_e;
    this.quantity_dc = quantity_dc;
    this.price_dc = price_dc;
    this.quantity_dc_e = quantity_dc_e;
    this.price_dc_e = price_dc_e;
    this.with_folding = with_folding;
    this.price_folding = price_folding;
  }

  OrderItems.fromitem() {
    this.subcatid = '';
    this.subcatname = '';
    this.subcatnamear = '';
    this.quantity_p = '';
    this.price_p = '';
    this.quantity_p_e = '';
    this.price_p_e = '';
    this.quantity_pw = '';
    this.price_pw = '';
    this.quantity_pw_e = '';
    this.price_pw_e = '';
    this.quantity_dc = '';
    this.price_dc = '';
    this.quantity_dc_e = '';
    this.price_dc_e = '';

    this.with_folding = false;
    this.price_folding = '';
  }
  OrderItems.fromjson() {
    this.subcatid = '';
    this.subcatname = '';
    this.subcatnamear = '';
    this.quantity_p = '';
    this.price_p = '';
    this.quantity_p_e = '';
    this.price_p_e = '';
    this.quantity_pw = '';
    this.price_pw = '';
    this.quantity_pw_e = '';
    this.price_pw_e = '';
    this.quantity_dc = '';
    this.price_dc = '';
    this.quantity_dc_e = '';
    this.price_dc_e = '';

    this.with_folding = false;
    this.price_folding = '';
  }

  OrderItems.fromJson(Map<String, dynamic> json) {
    print("item json is $json");
    this.subcatid = json['subcatid'].toString()=="null"?"":json['subcatid'].toString();
    this.subcatname = json['subcatname'].toString()=="null"?"":json['subcatname'].toString();
    this.subcatnamear = json['subcatnamear'].toString()=="null"?"":json['subcatnamear'].toString();
    this.quantity_p = json['quantity_p'].toString()=="null"?"":json['quantity_p'].toString();
    this.price_p = json['price_p'].toString()=="null"?"":json['price_p'].toString();
    this.quantity_p_e = json['quantity_p_e'].toString()=="null"?"":json['quantity_p_e'].toString();
    this.price_p_e = json['price_p_e'].toString()=="null"?"":json['price_p_e'].toString();
    this.quantity_pw = json['quantity_pw'].toString()=="null"?"":json['quantity_pw'].toString();
    this.price_pw = json['price_pw'].toString()=="null"?"":json['price_pw'].toString();
    this.quantity_pw_e = json['quantity_pw_e'].toString()=="null"?"":json['quantity_pw_e'].toString();
    this.price_pw_e = json['price_pw_e'].toString()=="null"?"":json['price_pw_e'].toString();
    this.quantity_dc = json['quantity_dc'].toString()=="null"?"":json['quantity_dc'].toString();
    this.price_dc = json['price_dc'].toString()=="null"?"":json['price_dc'].toString();
    this.quantity_dc_e = json['quantity_dc_e'].toString()=="null"?"":json['quantity_dc_e'].toString();
    this.price_dc_e = json['price_dc_e'].toString()=="null"?"":json['price_dc_e'].toString();
    this.with_folding = json['with_folding'].toLowerCase() == 'true';
    this.price_folding = json['price_folding'].toString()=="null"?"":json['price_folding'].toString();
  }

  OrderItems.fromString(String data) {
    // prString('data $data');
    Map<String, dynamic> json = jsonDecode(data);
    this.subcatid = json['subcatid'];
    this.subcatname = json['subcatname'];
    this.subcatnamear = json['subcatnamear'];
    this.quantity_p = json['quantity_p'];
    this.price_p = json['price_p'];
    this.quantity_p_e = json['quantity_p_e'];
    this.price_p_e = json['price_p_e'];
    this.quantity_pw = json['quantity_pw'];
    this.price_pw = json['price_pw'];
    this.quantity_pw_e = json['quantity_pw_e'];
    this.price_pw_e = json['price_pw_e'];
    this.quantity_dc = json['quantity_dc'];
    this.price_dc = json['price_dc'];
    this.quantity_dc_e = json['quantity_dc_e'];
    this.price_dc_e = json['price_dc_e'];
    this.with_folding = json['with_folding'];
    this.price_folding = json['price_folding'];
  }

  Map<String, dynamic> toJson() => {
        "subcatid": subcatid,
        "subcatname": subcatname,
        "subcatnamear": subcatnamear,
        "quantity_p": quantity_p,
        "price_p": price_p,
        "quantity_p_e": quantity_p_e,
        "price_p_e": price_p_e,
        "quantity_pw": quantity_pw,
        "price_pw": price_pw,
        "quantity_pw_e": quantity_pw_e,
        "price_pw_e": price_pw_e,
        "quantity_dc": quantity_dc,
        "price_dc": price_dc,
        "quantity_dc_e": quantity_dc_e,
        "price_dc_e": price_dc_e,
        "with_folding": with_folding,
        "price_folding": price_folding,
      };

  @override
  String toString() {
    // String userS = this.user.toString();
    // print("user is $userS");
    return '{"subcatid":$subcatid'
        '${subcatname == null ? '' : ',"subcatname":"$subcatname"'}'
        '${subcatnamear == null ? '' : ',"subcatnamear":"$subcatnamear"'}'
        '${quantity_p == null ? '' : ',"quantity_p":"$quantity_p"'}'
        '${price_p == null ? '' : ',"price_p":"$price_p"'}'
        '${quantity_p_e == null ? '' : ',"quantity_p_e":"$quantity_p_e"'}'
        '${price_p_e == null ? '' : ',"price_p_e":"$price_p_e"'}'
        '${quantity_pw == null ? '' : ',"quantity_pw":"$quantity_pw"'}'
        '${price_pw == null ? '' : ',"price_pw":"$price_pw"'}'
        '${quantity_pw_e == null ? '' : ',"quantity_pw_e":"$quantity_pw_e"'}'
        '${price_pw_e == null ? '' : ',"price_pw_e":"$price_pw_e"'}'
        '${quantity_dc == null ? '' : ',"quantity_dc":"$quantity_dc"'}'
        '${price_dc == null ? '' : ',"price_dc":"$price_dc"'}'
        '${quantity_dc_e == null ? '' : ',"quantity_dc_e":"$quantity_dc_e"'}'
        '${price_dc_e == null ? '' : ',"price_dc_e":"$price_dc_e"'}'
        '${with_folding == null ? '' : ',"with_folding":"$with_folding"'}'
        '${price_folding == null ? '' : ',"price_folding":"$price_folding"'}'
        '}';
  }
}
