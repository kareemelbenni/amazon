// import 'package:okoud_alkalam/utils/customcolors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class RadioItem extends StatelessWidget {
//   final RadioModel _item;
//   RadioItem(this._item);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: ScreenUtil().setWidth(343),
//       height: ScreenUtil().setHeight(91),
//       child: Center(
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: ScreenUtil().setWidth(285),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         _item.buttonText,
//                         style: TextStyle(height: 1,
//                             fontSize: ScreenUtil().setSp(18),
//                             fontWeight: FontWeight.w600),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                           top: ScreenUtil().setHeight(20),
//                         ),
//                         child: SingleChildScrollView(
//                           child: Column(
//                             children: [
//                               Text(
//                                 _item.text,
//                                 style: TextStyle(height: 1,
//                                   fontSize: ScreenUtil().setSp(14),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             !_item.isSelected
//                 ? Container(
//                     height: ScreenUtil().setWidth(20),
//                     width: ScreenUtil().setWidth(20),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10000),
//                       color: Color(0XFFF0F0F0),
//                     ),
//                   )
//                 : Icon(
//                     Icons.radio_button_checked,
//                     color: customcolors.Primary,
//                     size: ScreenUtil().setSp(24),
//                   )
//             // new Container(
//             //   height: 50.0,
//             //   width: 50.0,
//             //   child: new Center(
//             //     child: new Text(_item.buttonText,
//             //         style: new TextStyle(height: 1,
//             //             color: _item.isSelected ? Colors.white : Colors.black,
//             //             //fontWeight: FontWeight.bold,
//             //             fontSize: 18.0)),
//             //   ),
//             //   decoration: new BoxDecoration(
//             //     color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
//             //     border: new Border.all(
//             //         width: 1.0,
//             //         color: _item.isSelected ? Colors.blueAccent : Colors.grey),
//             //     borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
//             //   ),
//             // ),
//             // new Container(
//             //   margin: new EdgeInsets.only(left: 10.0),
//             //   child: new Text(_item.text),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class RadioModel {
//   bool isSelected;
//   final String buttonText;
//   final String text;
//   RadioModel(this.isSelected, this.buttonText, this.text);
// }
