// import 'dart:io';
// import 'package:atlantis/data/local/sharedPreferences/shared_preferences_helper.dart';
// import 'package:atlantis/getx_controllers/main_controller.dart';
// import 'package:atlantis/localization/languages.dart';
// import 'package:atlantis/models/api_model/general_model.dart';
// import 'package:atlantis/models/data_models/preference.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:grouped_buttons/grouped_buttons.dart';

// import '../utils/customcolors.dart';
// import 'package:flutter/material.dart';

// class PreferencesDialog extends StatefulWidget {
//   List<Preference> preferences;
//   PreferencesDialog(this.preferences);
//   @override
//   _PreferencesDialogState createState() => _PreferencesDialogState();
// }

// class _PreferencesDialogState extends State<PreferencesDialog> {
//   List<String> answers = [];
//   @override
//   void initState() {
//     initialization();
//     // TODO: implement initState
//     super.initState();
//   }

//   initialization() async {
//     Map<String, dynamic> pref;
//     await SharedPreferencesHelper().getCheckPhoneResponse().then((value) {
//       pref = value.user.preferences;
//     });

//     for (int i = 0; i < widget.preferences.length; i++) {
//       if (pref != null) {
//         if (pref.keys.contains(widget.preferences[i].id)) {
//           pref.forEach((key, value) {
//             // print("pref iss $value");
//             if (key == widget.preferences[i].id) {
//               answers.add("${value}");
//             }
//           });
//         }
//       } else if (widget.preferences[i].type == "list" &&
//           widget.preferences[i].list_answer_type == "multiple") {
//         answers.add("[]");
//       } else {
//         answers.add("");
//       }
//     }
//     isEnglish = await SharedPreferencesHelper().getIsEnglish();

//     setState(() {});
//   }

//   bool isEnglish = false;
//   final controller = Get.put(Controller());
//   @override
//   Widget build(BuildContext context) {
//     controller.setGlobalContext(context);
//     return Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         elevation: 0.0,
//         backgroundColor: customcolors.PrimaryWhite,
//         child: Container(
//             height: ScreenUtil().setHeight(1250),
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Padding(
//                     padding: EdgeInsets.only(
//                         top: ScreenUtil().setHeight(40),
//                         left: isEnglish ? ScreenUtil().setWidth(62) : 0,
//                         right: !isEnglish ? ScreenUtil().setWidth(62) : 0,
//                         bottom: ScreenUtil().setHeight(25)),
//                     child: Container(
//                       width: ScreenUtil().setWidth(800),
//                       // height: ScreenUtil().setHeight(60),
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text(
//                           AppTranslations.of(context)
//                               .text("enter_prefrences_for_your_laundry"),
//                           style: GoogleFonts.roboto(
//                             textStyle: TextStyle(
//                               height: 1,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   ListView.builder(
//                       primary: false,
//                       shrinkWrap: true,
//                       padding: EdgeInsets.only(
//                         top: ScreenUtil().setHeight(0),
//                       ),
//                       itemCount: widget.preferences.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         print(answers[index]);
//                         return preferencesItem(
//                             widget.preferences[index], index);
//                       }),
//                   Center(
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                         top: ScreenUtil().setHeight(30),
//                         bottom: ScreenUtil().setHeight(100),
//                         // left: ScreenUtil().setWidth(424)
//                       ),
//                       child: Container(
//                         height: ScreenUtil().setHeight(125.53),
//                         width: ScreenUtil().setWidth(393.18),
//                         child: ElevatedButton(
//                           onPressed: () {
//                             GeneralModel()
//                                 .updatepreference(
//                                     context, answers, widget.preferences)
//                                 .then((response) {
//                               if (response) {
//                                 Navigator.pop(context);
//                               }
//                             });
//                             // Navigator.push(
//                             //            context, FadeRoute(page: Checkout()));
//                           },
//                           style: ButtonStyle(
//                             foregroundColor: MaterialStateProperty.all<Color>(
//                                 customcolors.PrimaryBlue),
//                             backgroundColor: MaterialStateProperty.all<Color>(
//                                 customcolors.PrimaryBlue),
//                             shape: MaterialStateProperty.all<
//                                 RoundedRectangleBorder>(
//                               RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(62.77),
//                               ),
//                             ),
//                           ),
//                           child: Container(
//                             height: ScreenUtil().setHeight(62),
//                             width: ScreenUtil().setSp(128),
//                             child: FittedBox(
//                               fit: BoxFit.contain,
//                               child: Text(
//                                 AppTranslations.of(context).text("save"),
//                                 style: GoogleFonts.roboto(
//                                   textStyle: TextStyle(
//                                       height: 1,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold),
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
//             )));
//   }

//   int choosen = 0;
//   Widget preferencesItem(Preference preference, int index) {
//     TextEditingController answer = new TextEditingController();

//     return Padding(
//       padding: EdgeInsets.only(
//         // bottom: ScreenUtil().setHeight(58),
//         top: ScreenUtil().setHeight(42),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(
//               left: isEnglish ? ScreenUtil().setSp(88) : 0,
//               right: !isEnglish ? ScreenUtil().setSp(88) : 0,
//             ),
//             child: FittedBox(
//               fit: BoxFit.contain,
//               child: Container(
//                 width: ScreenUtil().setWidth(750),
//                 child: Text(
//                   isEnglish ? preference.name : preference.name_ar,
//                   style: GoogleFonts.roboto(
//                     textStyle:
//                         TextStyle(height: 1, color: customcolors.PrimaryBlue2),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // SizedBox(height: ScreenUtil().setHeight(58)),
//           preference.type == "yes_no"
//               ? FittedBox(
//                   child: RadioButtonGroup(
//                     picked: answers.length != 0 ? answers[index] : '',
//                     orientation: GroupedButtonsOrientation.VERTICAL,
//                     activeColor: customcolors.PrimaryBlue2,
//                     labels: <String>[
//                       AppTranslations.of(context).text("yes"),
//                       "${AppTranslations.of(context).text("no")} "
//                     ],
//                     onSelected: (String selected) {
//                       answers[index] = selected;
//                       setState(() {});
//                     },
//                   ),
//                 )
//               : preference.type == "text"
//                   ? Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: ScreenUtil().setSp(158)),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: ScreenUtil().setWidth(800),
//                             child: TextFormField(
//                               // controller: answer,
//                               // keyboardType: TextInputType.number,
//                               onChanged: (value) {
//                                 answers[index] = value.toString();
//                               },
//                               initialValue:
//                                   answers.length != 0 ? answers[index] : '',
//                               decoration: InputDecoration(
//                                 labelText: AppTranslations.of(context)
//                                     .text("your_answer"),
//                                 border: InputBorder.none,
//                                 focusedBorder: InputBorder.none,
//                                 enabledBorder: InputBorder.none,
//                                 errorBorder: InputBorder.none,
//                                 disabledBorder: InputBorder.none,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   : preference.type == "list"
//                       ? preference.list_answer_type == "single"
//                           ? FittedBox(
//                               child: RadioButtonGroup(
//                                 picked:
//                                     answers.length != 0 ? answers[index] : '',
//                                 // orientation: GroupedButtonsOrientation.VERTICAL,
//                                 activeColor: customcolors.PrimaryBlue2,
//                                 labels: preference.answers
//                                     .map((val) => isEnglish ? val.en : val.ar)
//                                     .toList(),
//                                 onSelected: (String selected) {
//                                   print("answers[index] is ${answers[index]}");
//                                   answers[index] = selected;
//                                   setState(() {});
//                                 },
//                               ),
//                             )
//                           : CheckboxGroup(
//                               checked: answers.length != 0
//                                   ? answers[index]
//                                       .replaceFirst("[", '')
//                                       .replaceFirst(']', '')
//                                       .split(', ')
//                                   : [],
//                               orientation: GroupedButtonsOrientation.VERTICAL,
//                               activeColor: customcolors.PrimaryBlue2,
//                               labels: preference.answers
//                                   .map((val) => isEnglish ? val.en : val.ar)
//                                   .toList(),
//                               onSelected: (List<String> checked) {
//                                 answers[index] = checked.toString();
//                                 print("checked are ${answers[index]}");
//                                 setState(() {});
//                               },
//                             )
//                       : Container(),
//         ],
//       ),
//     );
//   }
// }
