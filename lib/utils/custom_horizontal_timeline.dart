// import 'package:okoud_alkalam/utils/customcolors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomHorizontalTimeline extends StatelessWidget {
//   final String nameone;
//   final bool one;
//   final String nametwo;
//   final bool two;
//   final String namethree;
//   final bool three;
//   const CustomHorizontalTimeline(
//       {this.nameone,
//       this.one=false,
//       this.namethree,
//       this.nametwo,
//       this.three=false,
//       this.two=false});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         final boxWidth = constraints.constrainWidth();
//         final dashWidth = 5.0;
//         // final dashHeight = height;
//         final dashCount = (boxWidth / (2 * dashWidth)).floor();
//         return Container(
//           height: ScreenUtil().setHeight(82),
//           width: ScreenUtil().setWidth(343),
//           child: Column(
//             children: [
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Container(
//                     height: ScreenUtil().setHeight(1),
//                     width: ScreenUtil().setWidth(298),
//                     color: Color(0XFFDDDDDD),
//                   ),
//                   Container(
//                       width: ScreenUtil().setWidth(328),
//                       height: ScreenUtil().setWidth(30),
//                       child: Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               width: ScreenUtil().setWidth(30),
//                               height: ScreenUtil().setWidth(30),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   border: Border.all(
//                                       color: one
//                                           ? customcolors.Primary
//                                           : Color(0XFFDDDDDD)),
//                                   borderRadius: BorderRadius.circular(10000)),
//                               child: Center(
//                                 child: Container(
//                                   width: ScreenUtil().setWidth(16),
//                                   height: ScreenUtil().setWidth(16),
//                                   decoration: BoxDecoration(
//                                       color: one
//                                           ? customcolors.Primary
//                                           : Colors.white,
//                                       borderRadius:
//                                           BorderRadius.circular(10000)),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               width: ScreenUtil().setWidth(30),
//                               height: ScreenUtil().setWidth(30),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   border: Border.all(
//                                       color: two
//                                           ? customcolors.Primary
//                                           : Color(0XFFDDDDDD)),
//                                   borderRadius: BorderRadius.circular(10000)),
//                               child: Center(
//                                 child: Container(
//                                   width: ScreenUtil().setWidth(16),
//                                   height: ScreenUtil().setWidth(16),
//                                   decoration: BoxDecoration(
//                                       color: two
//                                           ? customcolors.Primary
//                                           : Colors.white,
//                                       borderRadius:
//                                           BorderRadius.circular(10000)),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               width: ScreenUtil().setWidth(30),
//                               height: ScreenUtil().setWidth(30),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   border: Border.all(
//                                       color: three
//                                           ? customcolors.Primary
//                                           : Color(0XFFDDDDDD)),
//                                   borderRadius: BorderRadius.circular(10000)),
//                               child: Center(
//                                 child: Container(
//                                   width: ScreenUtil().setWidth(16),
//                                   height: ScreenUtil().setWidth(16),
//                                   decoration: BoxDecoration(
//                                       color: three
//                                           ? customcolors.Primary
//                                           : Colors.white,
//                                       borderRadius:
//                                           BorderRadius.circular(10000)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       )),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.only(top: ScreenUtil().setHeight(14)),
//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         nameone,
//                         style: TextStyle(height: 1,
//                             color: one?Colors.black:Colors.black45,
//                             fontSize: ScreenUtil().setSp(12)),
//                       ),
//                       Text(
//                         nametwo,
//                         style: TextStyle(height: 1,
//                             color: two?Colors.black:Colors.black45,
//                             fontSize: ScreenUtil().setSp(12)),
//                       ),
//                       Text(
//                         namethree,
//                         style: TextStyle(height: 1,
//                             color: three?Colors.black:Colors.black45,
//                             fontSize: ScreenUtil().setSp(12)),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
