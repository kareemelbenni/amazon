import 'dart:convert';
import 'package:amazon/models/data_models/eventtype.dart';
import 'package:amazon/models/data_models/organizerType.dart';
import 'package:amazon/models/data_models/product.dart';


import '../data_models/event.dart';
import '../data_models/country.dart';
import '../data_models/loginResponse.dart';
import '/models/data_models/dashboard.dart';
import '/models/data_models/howItWorksModel.dart';
import '/models/data_models/notificationResponse.dart';
import '/models/data_models/order.dart';
import '/models/data_models/orderData.dart';
import '/models/data_models/orderResponse.dart';
import '/models/data_models/preference.dart';
import '/models/data_models/promocodeResponse.dart';
import '/models/reponses/base_reponse.dart';

import '../data_models/user.dart';

class GeneralResponse extends BaseResponse {
  String accessToken;
  List<HowItWorksModel> howItWorksModel = [];
  List<Event> events = [];
  List<Event> organizers = [];
  List<eventType> eventTypes = [];
  List<Event> suppliers = [];
  List<Product> products = [];
  List<Country> countries = [];
  List<OrganizerType> organizertypes = [];
  List<Preference> preferences = [];
  // CheckPhoneResponse checkPhoneResponse;
  // Dashboard dashboard;

  PromoCodeResponse promoCodeResponse;
  NotificationResponse notificationResponse;
  // OrderResponse orderResponse;
  // OrderData orderData;
  LoginResponse loginResponse;

  GeneralResponse.newItem() : super.newItem();

  GeneralResponse.fromStringHowItWorks(String data) : super.fromString(data) {
    Map<String, dynamic> json = jsonDecode(data);
    // print(json['how_it_works'].length);
    if (json['howItWorks'] != null) {
      for (int i = 0; i < json['howItWorks'].length; i++) {
        this
            .howItWorksModel
            .add(HowItWorksModel.fromJson(json['howItWorks'][i]));
      }
    }
  }

  GeneralResponse.fromStringCountries(String data) : super.fromString(data) {
    Map<String, dynamic> json = jsonDecode(data);
    // print(json['how_it_works'].length);
    if (json['countries'] != null) {
      for (int i = 0; i < json['countries'].length; i++) {
        this.countries.add(Country.fromJson(json['countries'][i]));
      }
    }
  }
  GeneralResponse.fromStringEventTypes(String data) : super.fromString(data) {
    Map<String, dynamic> json = jsonDecode(data);
    // print(json['how_it_works'].length);
    if (json['eventTypes'] != null) {
      for (int i = 0; i < json['eventTypes'].length; i++) {
        this.eventTypes.add(eventType.fromJson(json['eventTypes'][i]));
      }
    }
  }
  GeneralResponse.fromStringOrganizerTypes(String data)
      : super.fromString(data) {
    Map<String, dynamic> json = jsonDecode(data);
    // print(json['how_it_works'].length);
    if (json['organizerTypes'] != null) {
      for (int i = 0; i < json['organizerTypes'].length; i++) {
        this
            .organizertypes
            .add(OrganizerType.fromJson(json['organizerTypes'][i]));
      }
    }
  }

  GeneralResponse.fromStringEvents(String data) {
    print(data);
    List<dynamic> json = jsonDecode(data);
    // print(json['how_it_works'].length);
    if (json != null) {
      for (int i = 0; i < json.length; i++) {
        this.events.add(Event.fromJson(json[i]));
      }
    }
  }
  GeneralResponse.fromStringSupplier(String data) {
    print(data);
    Map<String, dynamic> json = jsonDecode(data);
    // print(json['how_it_works'].length);
    if (json['data'] != null) {
      for (int i = 0; i < json['data'].length; i++) {
        this.suppliers.add(Event.fromJson(json['data'][i]));
      }
    }
  }GeneralResponse.fromStringProducts(String data) {
    print(data);
    Map<String, dynamic> json = jsonDecode(data);
    // print(json['how_it_works'].length);
    if (json['results'] != null) {
      for (int i = 0; i < json['results'].length; i++) {
        this.products.add(Product.fromJson(json['results'][i]));
      }
    }
  }
  GeneralResponse.fromStringOrganizer(String data) {
    print(data);
    List<dynamic> json = jsonDecode(data);
    // print(json['how_it_works'].length);
    if (json != null) {
      for (int i = 0; i < json.length; i++) {
        this.organizers.add(Event.fromJson(json[i]));
      }
    }
  }
  GeneralResponse.fromStringPreferences(String data) {
    Map<String, dynamic> json = jsonDecode(data);
    print(json['questions']);
    // print(json['how_it_works'].length);
    if (json['questions'] != null) {
      for (int i = 0; i < json['questions'].length; i++) {
        this.preferences.add(Preference.fromJson(json['questions'][i]));
      }
    }
  }

  GeneralResponse.fromStringNotificationResponse(String data) {
    print(data);
    Map<String, dynamic> json = jsonDecode(data);
    if (json != null) {
      this.notificationResponse = (NotificationResponse.fromJson(
        json['notifications'],
      ));
      print("this check phone is ${this.notificationResponse}");
    }
  }

  // GeneralResponse.fromStringEvents(String data) {
  //   print(data);
  //   Map<String, dynamic> json = jsonDecode(data);
  //   if (json != null) {
  //     this.orderResponse = (Event.fromJson(
  //       json,
  //     ));
  //     print("this check phone is ${this.orderResponse}");
  //   }
  // }

  // GeneralResponse.fromStringOrderDeliveryResponse(String data) {
  //   print(data);
  //   Map<String, dynamic> json = jsonDecode(data);
  //   if (json != null) {
  //     this.orderResponse = (OrderResponse.fromJson(
  //       json['collection_orders'],
  //     ));
  //     print("this check phone is ${this.orderResponse}");
  //   }
  // }

  // GeneralResponse.fromStringOrderCollectionResponse(String data) {
  //   print(data);
  //   Map<String, dynamic> json = jsonDecode(data);
  //   if (json != null) {
  //     this.orderResponse = (OrderResponse.fromJson(
  //       json['collection_orders'],
  //     ));
  //     print("this check phone is ${this.orderResponse}");
  //   }
  // }

  GeneralResponse.fromStringLoginResponse(String data)
      : super.fromString(data) {
    Map<String, dynamic> json = jsonDecode(data);

    if (json != null) {
      this.loginResponse = (LoginResponse.fromJson2(json));
      print("this check phone is ${this.loginResponse}");
    }
  }

  // GeneralResponse.fromStringCategories(String data) : super.fromString(data) {
  //   Map<String, dynamic> json = jsonDecode(data);

  //   if (json['categories'] != null) {
  //     for (int i = 0; i < json['categories'].length; i++) {
  //       this.categories.add(Country.fromJson(json['categories'][i]));
  //     }
  //   }
  // }

  // GeneralResponse.fromStringCheckPhone(
  //     String data, CheckPhoneResponse checkPhoneResponse)
  //     : super.fromString(data) {
  //   Map<String, dynamic> json = jsonDecode(data);

  //   if (json != null) {
  //     this.checkPhoneResponse =
  //         (CheckPhoneResponse.fromJson2(json, checkPhoneResponse));
  //     print("this check phone is ${this.checkPhoneResponse}");
  //   }
  // }

  // GeneralResponse.fromStringGetprofile(
  //     String data, CheckPhoneResponse checkPhoneResponse)
  //     : super.fromString(data) {
  //   Map<String, dynamic> json = jsonDecode(data);

  //   if (json != null) {
  //     this.checkPhoneResponse =
  //         (CheckPhoneResponse.fromJson3(json, checkPhoneResponse));
  //     print("this check phone is ${this.checkPhoneResponse}");
  //   }
  // }

  // GeneralResponse.fromStringDashboard(String data) : super.fromString(data) {
  //   Map<String, dynamic> json = jsonDecode(data);

  //   if (json != null) {
  //     this.dashboard = (Dashboard.fromJson(json));
  //   }
  // }
  // GeneralResponse.fromStringOrderData(String data) {
  //   Map<String, dynamic> json = jsonDecode(data);

  //   if (json != null) {
  //     this.orderData = (OrderData.fromJson(json));
  //   }
  // }

  // GeneralResponse.fromStringCheckPhone2(String data) : super.fromString(data) {
  //   Map<String, dynamic> json = jsonDecode(data);

  //   if (json != null) {
  //     this.checkPhoneResponse = (CheckPhoneResponse.fromJson(json));
  //   }
  // }

  // GeneralResponse.fromStringPromoCode(String data) : super.fromString(data) {
  //   Map<String, dynamic> json = jsonDecode(data);
  //   print("jsonssss is $json");
  //   if (json != null) {
  //     this.promoCodeResponse = (PromoCodeResponse.fromJson(json));
  //   }
  // }
}
