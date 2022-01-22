// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';

// Future<bool> checkLocationPermission(BuildContext context) async {
//   if (Platform.isIOS) {
//     return true;
//   }

//   PermissionStatus permission =await Permission.locationWhenInUse.status;
//       // await PermissionHandler().checkPermissionStatus(PermissionGroup.location);


//       Map<Permission, PermissionStatus> permissions = await [
//   Permission.location,

// ].request();
//   // print(permissions);
//   // print(permission.toString());

//   if (permission == PermissionStatus.denied) {
//     return false;
//   } else if (permission == PermissionStatus.granted) {
//     return true;
//   } else if (permission == PermissionStatus.denied) {
//     return true;
//   }
//   return false;
// }
