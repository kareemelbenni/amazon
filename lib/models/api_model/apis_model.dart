import 'dart:io';
import 'package:amazon/models/data_models/country.dart';
import 'package:amazon/models/data_models/event.dart';
import 'package:amazon/models/data_models/eventtype.dart';
import 'package:amazon/models/data_models/howItWorksModel.dart';
import 'package:amazon/models/data_models/loginResponse.dart';
import 'package:amazon/models/data_models/organizerType.dart';
import 'package:amazon/models/data_models/product.dart';
import 'package:amazon/models/reponses/general_Response.dart';
import 'package:amazon/transitions/fadeoutroute.dart';
import 'package:amazon/utils/general_util.dart';
import '/data/local/sharedPreferences/shared_preferences_helper.dart';
// import '/models/reponses/login_response.dart';
import '/models/service/services.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

import 'dart:convert';

import 'package:toast/toast.dart';

class APISModel {
  static final APISModel _singleton = new APISModel._internal();

  factory APISModel() {
    return _singleton;
  }

  APISModel._internal();

  Future<List<HowItWorksModel>> howitworks(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).howItWorks().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringHowItWorks(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.howItWorksModel;
  }

  Future<bool> register(
      BuildContext buildContext,
      String firstname,
      String lastname,
      String email,
      String password,
      type,
      phonenumber,
      companyname,
      companytype,
      country_id) async {
    bool response = await Services(buildContext)
        .register(
            firstname,
            lastname,
            email,
            password,
            type.toString().toLowerCase(),
            phonenumber,
            companyname,
            companytype,
            country_id)
        .then((response) {
      Navigator.pop(buildContext);

      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          // Navigator.of(buildContext).pop();
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return true;
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 422:
          print("resister result is $result");
          Toast.show(
              result['errors']
                  .toString()
                  .replaceFirst("{", "")
                  .replaceFirst("}", ""),
              buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return true;
  }

  Future<bool> resetpassword(BuildContext buildContext, String email) async {
    bool response =
        await Services(buildContext).resetpassword(email).then((response) {
      Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          Toast.show(result['message'], buildContext);
          // print("response.body is: ${response.body}");
          return true;
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 422:
          final result = json.decode(response.body)['errors'];
          Toast.show(result['email'][0], buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return true;
  }

  Future<List<Country>> countries(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).countries().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringCountries(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.countries;
  }

  Future<List<eventType>> eventTypes(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).eventTypes().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringEventTypes(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.eventTypes;
  }

  Future<List<OrganizerType>> organizerTypes(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).organizerTypes().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringOrganizerTypes(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.organizertypes;
  }

  Future<List<Event>> eventlist(BuildContext buildContext, country_id, name,
      address, type_id, city) async {
    GeneralResponse response = await Services(buildContext)
        .eventlist(country_id, name, address, type_id, city)
        .then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringEvents(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.events;
  }

  Future<List<Event>> eventlistGlobal(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).eventlistGlobal().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringEvents(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.events;
  }

  Future<List<Event>> supplierlist(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).supplierlist().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringSupplier(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.suppliers;
  }

  Future<List<Event>> placeslist(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).placelist().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringSupplier(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.suppliers;
  }

  Future<List<Event>> organizerlist(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).organizerlist().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringOrganizer(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.organizers;
  }

  Future<List<Event>> supplierlistGlobal(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).supplierlistGlobal().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringSupplier(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.suppliers;
  }

  Future<List<Product>> getproducts(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).getproducts().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringProducts(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.products;
  }

  Future<List<Event>> organizerlistGlobal(
    BuildContext buildContext,
  ) async {
    GeneralResponse response =
        await Services(buildContext).organizerlistGlobal().then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringOrganizer(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.organizers;
  }

  Future<bool> createEvent(
      BuildContext buildContext,
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
    bool response = await Services(buildContext)
        .createEvent(
            name,
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
            venue_address_latitude.toString(),
            venue_address_longitude.toString(),
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
            main_photo)
        .then((response) {
      // Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          print("me result is $result");
          // print("response.body is: ${response.body}");
          return true;
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;

        case 422:
          Toast.show(
              result['errors']['message']
                  .toString()
                  .replaceFirst("[", "")
                  .replaceFirst("]", ""),
              buildContext);

          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return true;
  }

  Future<LoginResponse> verifyuser(
      BuildContext buildContext, String email, verification_code) async {
    GeneralResponse response = await Services(buildContext)
        .verifyuser(email, verification_code)
        .then((response) {
      Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);

          // Toast.show(result['message'], buildContext);
          // print("response.body is: ${response.body}");
          return GeneralResponse.fromStringLoginResponse(response.body);
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 422:
          final result = json.decode(response.body)['errors'];
          Toast.show(result['email'][0], buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return response.loginResponse;
  }

  Future<bool> resendverify(BuildContext buildContext, String email) async {
    bool response =
        await Services(buildContext).resendverify(email).then((response) {
      Navigator.of(buildContext).pop();
      print("response is $response");
      if (response == null) return null;

      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      final result = json.decode(response.body);
      switch (response.statusCode) {
        case 200:
          Toast.show("Success", buildContext);
          // Toast.show(result['message'], buildContext);
          // print("response.body is: ${response.body}");
          return true;
        // return LoginResponse.fromString(response.body);
        case 401:
          Toast.show("Unauthorized", buildContext);
          break;
        case 422:
          final result = json.decode(response.body)['errors'];
          Toast.show(result['email'][0], buildContext);
          break;
        case 500:
          Toast.show("Error Occured", buildContext);
          break;
      }
      return null;
    });

    if (response == null) return null;

    return true;
  }
}
