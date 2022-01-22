// import 'dart:io';
// import 'package:atlantis/data/local/sharedPreferences/shared_preferences_helper.dart';
// import 'package:atlantis/getx_controllers/main_controller.dart';
// import 'package:atlantis/localization/languages.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../utils/customcolors.dart';
// import 'package:flutter/material.dart';

// class PickerDialog extends StatefulWidget {
//   List<dynamic> list = [];
//   PickerDialog(this.list);
//   @override
//   _PickerDialogState createState() => _PickerDialogState();
// }

// class _PickerDialogState extends State<PickerDialog> {
//   @override
//   Future<void> initState() {
//     initialization();
//     // TODO: implement initState
//     super.initState();
//   }

//   initialization() async {
//     isEnglish = await SharedPreferencesHelper().getIsEnglish();
//     setState(() {
      
//     });
//   }

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
//         height: ScreenUtil().setHeight(869.5),
//         child: ListView.builder(
//             primary: false,
//             shrinkWrap: true,
//             padding: EdgeInsets.only(
//               top: ScreenUtil().setHeight(0),
//             ),
//             itemCount: widget.list.length,
//             itemBuilder: (BuildContext context, int index) {
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context, widget.list[index]);
//                 },
//                 child: addressItem(
//                     widget.list[index].name,
//                     widget.list[index].area,
//                     widget.list[index].zone,
//                     widget.list[index].building,
//                     widget.list[index].street,
//                     widget.list[index].number,
//                     widget.list[index].additional_info,
//                     widget.list[index].is_default),
//               );
//             }),
//       ),
//     );
//   }

//   bool isEnglish = false;
//   Widget addressItem(String name, area, zone, building, street, flat,
//       additionalinfo, isdefault) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(
//             left: isEnglish ? ScreenUtil().setSp(100) : 0,
//             right: !isEnglish ? ScreenUtil().setSp(100) : 0,
//             top: ScreenUtil().setHeight(40),
//           ),
//           child: Row(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(
//                   right: isEnglish ? ScreenUtil().setSp(25) : 0,
//                   left: !isEnglish ? ScreenUtil().setSp(25) : 0,
//                 ),
//                 child: Container(
//                   width: ScreenUtil().setSp(29.13),
//                   height: ScreenUtil().setHeight(46.57),
//                   child: FittedBox(
//                       fit: BoxFit.contain,
//                       child: Image.asset("assets/img/location.png")),
//                 ),
//               ),
//               Text(
//                 name,
//                 style: GoogleFonts.roboto(
//                   textStyle: TextStyle(
//                       height: 1,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF8F8E8E),
//                       fontSize: ScreenUtil().setSp(43)),
//                 ),
//               ),
//               Text(
//                 isdefault == "true"
//                     ? " ${AppTranslations.of(context).text("default")} "
//                     : "",
//                 style: GoogleFonts.roboto(
//                   textStyle: TextStyle(
//                       height: 1,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF48BBE9),
//                       fontSize: ScreenUtil().setSp(40)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//             left: isEnglish ? ScreenUtil().setSp(154.13) : 0,
//             right: !isEnglish ? ScreenUtil().setSp(154.13) : 0,
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     "$area, ",
//                     style: GoogleFonts.roboto(
//                       textStyle: TextStyle(
//                           height: 1,
//                           color: Color(0xFF8F8E8E),
//                           fontSize: ScreenUtil().setSp(43)),
//                     ),
//                   ),
//                   Text(
//                     "$zone, ",
//                     style: GoogleFonts.roboto(
//                       textStyle: TextStyle(
//                           height: 1,
//                           color: Color(0xFF8F8E8E),
//                           fontSize: ScreenUtil().setSp(43)),
//                     ),
//                   ),
                  
//                 ],
//               ),
//               Container(
//                 height: ScreenUtil().setHeight(55.82),
//                 width: ScreenUtil().setHeight(55.82),
//                 margin: EdgeInsets.only(
//                   right: isEnglish ? ScreenUtil().setSp(114) : 0,
//                   left: !isEnglish ? ScreenUtil().setSp(114) : 0,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10000),
//                   border: Border.all(
//                     color: Color(0XFF444343),
//                     width: ScreenUtil().setSp(0.5),
//                   ),
//                 ),
//                 child: Center(
//                   child: Container(
//                     // width: ScreenUtil().setHeight(17),
//                     height: ScreenUtil().setHeight(31),
//                     // child: Image.asset("assets/img/forwardArrow.png",
//                     child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Icon(
//                           Icons.arrow_forward_ios,
//                         )),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//             left: isEnglish ? ScreenUtil().setSp(154.13) : 0,
//             right: !isEnglish ? ScreenUtil().setSp(154.13) : 0,
//           ),
//           child: Row(
//             children: [
//               Text(
//                     "$street, ",
//                     style: GoogleFonts.roboto(
//                       textStyle: TextStyle(
//                           height: 1,
//                           color: Color(0xFF8F8E8E),
//                           fontSize: ScreenUtil().setSp(43)),
//                     ),
//                   ),
//                   Text(
//                     "$building",
//                     style: GoogleFonts.roboto(
//                       textStyle: TextStyle(
//                           height: 1,
//                           color: Color(0xFF8F8E8E),
//                           fontSize: ScreenUtil().setSp(43)),
//                     ),
//                   ),
//               Text(
//                 "$additionalinfo",
//                 style: GoogleFonts.roboto(
//                   textStyle: TextStyle(
//                       height: 1,
//                       color: Color(0xFF8F8E8E),
//                       fontSize: ScreenUtil().setSp(43)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: ScreenUtil().setHeight(76),
//         ),
//       ],
//     );
//   }
// }
