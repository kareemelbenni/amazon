import 'dart:io';
// import 'package:device_info/device_info.dart';

import 'package:amazon/dialogs/message_dialog.dart';
import 'package:amazon/dialogs/waiting_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shared_preferences/shared_preferences.dart';

class GeneralUtil {
  static final GeneralUtil _singleton = new GeneralUtil._internal();

  factory GeneralUtil() {
    return _singleton;
  }

  GeneralUtil._internal();

  // static Future<void> openMap(double latitude, double longitude) async {
  //   String googleUrl =
  //       'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  //   if (await canLaunch(googleUrl)) {
  //     await launch(googleUrl);
  //   } else {
  //     throw 'Could not open the map.';
  //   }
  // }



  // Future<bool> showBottomSheet(BuildContext context, Widget widget) {
  //   return showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return widget;
  //       });
  // }

  // void getDeviceInfo() async {
  //   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  //   if (Platform.isIOS) {
  //     IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  //     // print('Running on ${iosInfo.utsname.machine}');
  //   } else {
  //     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  //     // print('Running on ${androidInfo.model}');
  //   }
  // }

  // Future<Object> showFlushBar(BuildContext context, String value) {
  //   if (context == null) return null;
  //   if (value == null) return null;
  //   return Flushbar(
  //     message: value,
  //     icon: Icon(
  //       Icons.info_outline,
  //       color: Colors.white,
  //     ),
  //     duration: Duration(seconds: 5),
  //     flushbarPosition: FlushbarPosition.TOP,
  //   ).show(context);
  // }

  showInSnackBar(GlobalKey<ScaffoldState> scaffoldKey, String value) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
        content: new Text(
      value,
    )));
  }

  // showPickerDialog(BuildContext context, List<dynamic> list) async {
  //   if (context == null) return;
  //   try {
  //     final result = await showDialog(
  //         context: context,
  //         // barrierDismissible: false,
  //         builder: (BuildContext context) {
  //           return StatefulBuilder(builder: (context, setState) {
  //             return PickerDialog(list);
  //           });
  //         });
  //     return result;
  //   } catch (e) {}
  // }

  // showAttentionDialog(
  //     BuildContext context, String message, Function onTap) async {
  //   if (context == null) return;
  //   try {
  //     final result = await showDialog(
  //         context: context,
  //         // barrierDismissible: false,
  //         builder: (BuildContext context) {
  //           return StatefulBuilder(builder: (context, setState) {
  //             return AttentionDialog(message, onTap);
  //           });
  //         });
  //     return result;
  //   } catch (e) {}
  // }

  // showErrorDialog(
  //     BuildContext context, String message, Function onTap, bool error) async {
  //   if (context == null) return;
  //   try {
  //     final result = await showDialog(
  //         context: context,
  //         // barrierDismissible: false,
  //         builder: (BuildContext context) {
  //           return StatefulBuilder(builder: (context, setState) {
  //             return ErrorDialog(message, onTap, error);
  //           });
  //         });
  //     return result;
  //   } catch (e) {}
  // }

  // showPreferencesDialog(
  //     BuildContext context, List<Preference> preferences) async {
  //   if (context == null) return;
  //   try {
  //     final result = await showDialog(
  //         context: context,
  //         barrierDismissible: false,
  //         builder: (BuildContext context) {
  //           return StatefulBuilder(builder: (context, setState) {
  //             return PreferencesDialog(preferences);
  //           });
  //         });
  //     return result;
  //   } catch (e) {}
  // }

  showWaitingDialog(BuildContext context) async {
    if (context == null) return;
    try {
      final result = await showDialog(
          context: context,
          // barrierDismissible: false,
          builder: (BuildContext context) {
            return StatefulBuilder(builder: (context, setState) {
              return WaitingDialog();
            });
          });
      return result;
    } catch (e) {}
  }

  showMessageDialog(BuildContext context, String message, String message2,
      Function fc, Function fc2) async {
    if (context == null) return;
    try {
      final result = await showDialog(
          context: context,
          // barrierDismissible: false,
          builder: (BuildContext context) {
            return StatefulBuilder(builder: (context, setState) {
              return MessageDialog(message, message2, fc, fc2);
            });
          });
      return result;
    } catch (e) {}
  }

  bool isEmail(String email) {
    String p = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$';
//        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9])))$';
    RegExp regExp = new RegExp(p);
    return email == '' ? false : regExp.hasMatch(email);
  }

  bool verifyPassword(String password) {
    String p = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9\W]+$';
    p = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9\W]{5,}$';
    RegExp regExp = new RegExp(p);
    return password == '' ? false : regExp.hasMatch(password);
  }

  bool verifyUserName(String userName) {
    return (userName != '' && userName.length > 3 && userName.length < 41);
  }

  bool verifyQrCode(String data) {
    int version = 2;
    switch (version) {
      case 1:
        return _verifyQrCodeV1(data);
      case 2:
        return _verifyQrCodeV2(data);
      default:
        return false;
    }
  }

  bool _verifyQrCodeV1(String data) {
    final custom = RegExp(r'^Elite-[0-9]+-[0-9]+$');
    return custom.hasMatch(data);
  }

  bool _verifyQrCodeV2(String data) {
    final custom = RegExp(r'^[0-9]+$');
    return custom.hasMatch(data);
  }
}
