import 'dart:convert';
import 'dart:io' show Platform;

import '/data/local/sharedPreferences/shared_preferences_helper.dart';
import '/getx_controllers/main_controller.dart';
import '/models/data_models/order_items.dart';
import '/models/data_models/preference.dart';

import '/models/service/request.dart';
import '/utils/connectivity_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Services {
  //todo: must handle No Route to Host
  BuildContext buildContext;
  final SharedPreferencesHelper _sharedPreferencesHelper =
      SharedPreferencesHelper();

  static final Services _singleton = new Services._internal();

  factory Services(BuildContext buildContext) {
    _singleton.setBuildContext(buildContext);
    return _singleton;
  }

  Services._internal();

  setBuildContext(BuildContext buildContext) {
    this.buildContext = buildContext;
  }

  Future<http.Response> login(String email, String password) async {
    RequestModel request = new RequestModel();
    request.url += "/login";
    var map = new Map<String, dynamic>();
    map['email'] = email;
    map['password'] = password;
    print(map);
    return await http.post(Uri.parse(request.url),
        headers: request.headers, body: map);
  }

  Future<http.Response> createEvent(
      String name,
      type_id,
      description,
      venue_name,
      venue_building_name,
      venue_room_name,
      venue_room_number,
      venue_full_address,
      venue_city,
      venue_street,
      venue_address_address,
      venue_address_latitude,
      venue_address_longitude,
      contact_person,
      contact_phone,
      contact_email,
      country_id,
      start_date,
      end_date,
      start_time,
      end_time,
      free_event,
      reservation_type,
      booking_type,
      pricing_type,
      pricing_amount,
      main_photo) async {
    RequestModel request = new RequestModel();
    request.url += "/create-event";
    var map = new Map<String, dynamic>();
    map['name'] = name;
    map['type_id'] = type_id;
    map['description'] = description;
    map['venue_name'] = venue_name;
    map['venue_building_name'] = venue_building_name;
    map['venue_room_name'] = venue_room_name;
    map['venue_room_number'] = venue_room_number;
    map['venue_full_address'] = venue_full_address;
    map['venue_city'] = venue_city;
    map['venue_street'] = venue_street;
    map['venue_address_address'] = venue_address_address;
    map['venue_address_latitude'] = venue_address_latitude;
    map['venue_address_longitude'] = venue_address_longitude;
    map['contact_person'] = contact_person;
    map['contact_phone'] = contact_phone;
    map['contact_email'] = contact_email;
    map['country_id'] = country_id;
    map['start_date'] = start_date;
    map['end_date'] = end_date;
    map['start_time[]'] = start_time;
    map['end_time[]'] = end_time;
    map['free_event'] = "yes";
    map['reservation_type'] = "no";
    map['booking_type'] = booking_type;
    map['pricing_type[]'] = pricing_type;
    map['pricing_amount[]'] = pricing_amount;
    map['main_photo'] = main_photo;
    print(map);
    String token;
    await SharedPreferencesHelper()
        .getCheckPhoneResponse()
        .then((value) => token = value.token);
    request.putAccessToken(token);
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    return await http.post(Uri.parse(request.url),
        headers: request.headers, body: map);
  }

  Future<http.Response> register(
      String firstname,
      String lastname,
      String email,
      String password,
      type,
      phonenumber,
      companyname,
      companytype,
      country_id) async {
    RequestModel request = new RequestModel();
    request.url += "/register";
    var map = new Map<String, dynamic>();
    map['first_name'] = firstname;
    map['last_name'] = lastname;
    map['email'] = email;
    map['password'] = password;
    map['password_confirmation'] = password;
    map['type'] = type;
    map['phone_number'] = phonenumber;
    map['company_name'] = companyname;
    map['country_id'] = country_id;
    map['organizerType_id'] = companytype;
    print(map);
    return await http.post(Uri.parse(request.url),
        headers: request.headers, body: map);
  }

  Future<http.Response> resetpassword(String email) async {
    RequestModel request = new RequestModel();
    request.url += "/reset-password";
    var map = new Map<String, dynamic>();
    map['email'] = email;
    print(map);
    return await http.post(Uri.parse(request.url),
        headers: request.headers, body: map);
  }

  Future<http.Response> verifyuser(String email, verification_code) async {
    RequestModel request = new RequestModel();
    request.url += "/verify-user";
    var map = new Map<String, dynamic>();
    map['email'] = email;
    map['verification_code'] = verification_code;
    print(map);
    return await http.post(Uri.parse(request.url),
        headers: request.headers, body: map);
  }

  Future<http.Response> resendverify(String email) async {
    RequestModel request = new RequestModel();
    request.url += "/resend-verify";
    var map = new Map<String, dynamic>();
    map['email'] = email;
    print(map);
    return await http.post(Uri.parse(request.url),
        headers: request.headers, body: map);
  }

  Future<http.Response> updateprofile(String firstname, lastname, dob) async {
    RequestModel request = new RequestModel();
    request.url += "/update-profile";
    var map = new Map<String, dynamic>();
    map['first_name'] = firstname;
    map['last_name'] = lastname;
    map['dob'] = dob;
    print(map);
    return await http.post(Uri.parse(request.url),
        headers: request.headers, body: map);
  }

  Future<http.Response> howItWorks() async {
    RequestModel request = new RequestModel();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.url += "/how-it-works";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> countries() async {
    RequestModel request = new RequestModel();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.url += "/countries";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> eventTypes() async {
    RequestModel request = new RequestModel();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.url += "/event-types";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> organizerTypes() async {
    RequestModel request = new RequestModel();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.url += "/organizer-types";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> home() async {
    RequestModel request = new RequestModel();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.url += "/home";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> profile() async {
    RequestModel request = new RequestModel();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.url += "/profile";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> organizerlist() async {
    RequestModel request = new RequestModel();
    String countrycode = await SharedPreferencesHelper().getCountryCode();
    request.headers.putIfAbsent('country-code', () {
      return countrycode;
    });
    String token;
    await SharedPreferencesHelper()
        .getCheckPhoneResponse()
        .then((value) => token = value.token);
    request.putAccessToken(token);
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.url += "/organizer-list";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> organizerlistGlobal() async {
    RequestModel request = new RequestModel();
    String countrycode = await SharedPreferencesHelper().getCountryCode();
    request.headers.putIfAbsent('country-code', () {
      return 'GG';
    });
    String token;
    await SharedPreferencesHelper()
        .getCheckPhoneResponse()
        .then((value) => token = value.token);
    request.putAccessToken(token);
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.url += "/organizer-list";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> eventlist(
      country_id, name, address, type_id, city) async {
    RequestModel request = new RequestModel();
    String countrycode = await SharedPreferencesHelper().getCountryCode();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    String token;
    await SharedPreferencesHelper()
        .getCheckPhoneResponse()
        .then((value) => token = value.token);
    request.putAccessToken(token);
    request.url += "/event-list";
    request.headers.putIfAbsent('country-code', () {
      return countrycode;
    });
    Map<String, dynamic> queryParameters = {};
name="test";
    if (country_id != "")
      queryParameters.putIfAbsent('filters[country_id]', () {
        return country_id;
      });
    if (name != "")
      queryParameters.putIfAbsent('filters\[name\]', () {
        return name;
      });
    if (address != "")
      queryParameters.putIfAbsent('filters[address]', () {
        return address;
      });
    if (type_id != "")
      queryParameters.putIfAbsent('filters[type_id]', () {
        return type_id;
      });
    if (city != "")
      queryParameters.putIfAbsent('filters[city]', () {
        return city;
      });
      Uri uri;
      if(queryParameters.length>0){
        uri = Uri.parse(request.url).replace(queryParameters:queryParameters);
      }else{
        uri = Uri.parse(request.url);

      }
      print("uri is ${uri.toString().replaceAll("%5B", "[").replaceAll("%5D", "]")}");
    return await http.get(
      uri,
      headers: request.headers,
    );
  }

  Future<http.Response> eventlistGlobal() async {
    RequestModel request = new RequestModel();
    // String countrycode = await SharedPreferencesHelper().getCountryCode();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    String token;
    await SharedPreferencesHelper()
        .getCheckPhoneResponse()
        .then((value) => token = value.token);
    request.putAccessToken(token);
    request.url += "/event-list";
    request.headers.putIfAbsent('country-code', () {
      return 'GG';
    });
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> supplierlist() async {
    RequestModel request = new RequestModel();
    String countrycode = await SharedPreferencesHelper().getCountryCode();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.headers.putIfAbsent('country-code', () {
      return countrycode;
    });
    String token;
    await SharedPreferencesHelper()
        .getCheckPhoneResponse()
        .then((value) => token = value.token);
    request.putAccessToken(token);
    request.url += "/supplier-list";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> placelist() async {
    RequestModel request = new RequestModel();
    String countrycode = await SharedPreferencesHelper().getCountryCode();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.headers.putIfAbsent('country-code', () {
      return countrycode;
    });
    String token;
    await SharedPreferencesHelper()
        .getCheckPhoneResponse()
        .then((value) => token = value.token);
    request.putAccessToken(token);
    request.url += "/place-list";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> supplierlistGlobal() async {
    RequestModel request = new RequestModel();
    String countrycode = await SharedPreferencesHelper().getCountryCode();
    request.putLanguage(
        await SharedPreferencesHelper().getIsEnglish() ? "en" : "ar");
    request.headers.putIfAbsent('country-code', () {
      return 'GG';
    });
    String token;
    await SharedPreferencesHelper()
        .getCheckPhoneResponse()
        .then((value) => token = value.token);
    request.putAccessToken(token);
    request.url += "/supplier-list";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }

  Future<http.Response> getproducts() async {
    RequestModel request = new RequestModel();

    request.headers.putIfAbsent('x-rapidapi-host', () {
      return 'amazon-products1.p.rapidapi.com';
    });request.headers.putIfAbsent('x-rapidapi-key', () {
      return 'd635aa0c0amsh84b028479b853eep161184jsn09579a0c7d2e';
    });
    request.url += "/summaries?country=US&asins=B095NWYQBC,B081RJ8DW1,B081CHLF46,B01N1081RO";
    return await http.get(
      Uri.parse(request.url),
      headers: request.headers,
    );
  }
}
