// import 'dart:io';
// import 'package:atlantis/getx_controllers/main_controller.dart';
// import 'package:atlantis/localization/languages.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../utils/customcolors.dart';
// import 'package:flutter/material.dart';

// class AttentionDialog extends StatefulWidget {
//   String message;
//   Function okay;
//   AttentionDialog(this.message, this.okay);
//   @override
//   _AttentionDialogState createState() => _AttentionDialogState();
// }

// class _AttentionDialogState extends State<AttentionDialog> {
// final controller = Get.put(Controller());
//   @override
//   Widget build(BuildContext context) {
//     controller.setGlobalContext(context);
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       elevation: 0.0,
//       backgroundColor: customcolors.PrimaryWhite,
//       child: Container(
//         // height: ScreenUtil().setHeight(869.5),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                 top: ScreenUtil().setHeight(129.1),
//                 bottom: ScreenUtil().setHeight(45.5),
//               ),
//               child: Container(
//                 height: ScreenUtil().setHeight(341.91),
//                 width: ScreenUtil().setHeight(341.91),
//                 child: Image.asset("assets/img/attention.png"),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                 bottom: ScreenUtil().setHeight(65.5),
//               ),
//               child: Container(
//                 width: ScreenUtil().setWidth(800),
//                 child: Text(
//                   widget.message,
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.roboto(
//                     textStyle: TextStyle(height: 1,
//                         color: customcolors.BlackGrey,
//                         fontWeight: FontWeight.bold,
//                         fontSize: ScreenUtil().setSp(60)),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(43)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Container(
//                       height: ScreenUtil().setHeight(125.53),
//                       width: ScreenUtil().setSp(339.18),
//                       decoration: BoxDecoration(
//                         color: customcolors.PrimaryBlue,
//                         borderRadius: BorderRadius.circular(10000),
//                       ),
//                       child: Center(
//                         child: Container(
//                           height: ScreenUtil().setHeight(45),
//                           // width: ScreenUtil().setSp(275),
//                           child: FittedBox(
//                             fit: BoxFit.contain,
//                             child: Text(
//                               AppTranslations.of(context).text("go_back"),
//                               style: GoogleFonts.roboto(
//                                 textStyle: TextStyle(height: 1,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: widget.okay,
//                     child: Container(
//                       height: ScreenUtil().setHeight(125.53),
//                       width: ScreenUtil().setSp(339.18),
//                       decoration: BoxDecoration(
//                         color: customcolors.PrimaryBlue,
//                         borderRadius: BorderRadius.circular(10000),
//                       ),
//                       child: Center(
//                         child: Container(
//                           height: ScreenUtil().setHeight(45),
//                           // width: ScreenUtil().setSp(250),
//                           child: FittedBox(
//                             fit: BoxFit.contain,
//                             child: Text(
//                               AppTranslations.of(context).text("okay"),
//                               style: GoogleFonts.roboto(
//                                 textStyle: TextStyle(height: 1,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
