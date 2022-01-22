import 'package:connectivity/connectivity.dart';

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

// import 'package:fluttertoast/fluttertoast.dart';

// import 'package:fluttertoast/fluttertoast.dart';


class ConnectivityHelper {
  static final ConnectivityHelper _singleton =
      new ConnectivityHelper._internal();

  factory ConnectivityHelper() {
    return _singleton;
  }

  ConnectivityHelper._internal();

  Future<bool> checkConnectivityResult(BuildContext context) async {
    var connectivityResult = await (new Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // print('No Connectivity');
      Toast.show("No Connectivity",context
      );
    } else if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network.
      // print('Mobile');
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
      // print('Wifi');
      return true;
    }
    return false;
  }
}
