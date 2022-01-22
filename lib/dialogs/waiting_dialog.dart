import 'dart:io';
// import 'package:atlantis/getx_controllers/main_controller.dart';
import 'package:amazon/getx_controllers/main_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/customcolors.dart';
import 'package:flutter/material.dart';



class WaitingDialog extends StatefulWidget {
  @override
  _WaitingDialogState createState() => _WaitingDialogState();
}

class _WaitingDialogState extends State<WaitingDialog> {
final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    // controller.setGlobalContext(context);
    // Full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

// Height (without SafeArea)
    var padding = MediaQuery.of(context).padding;
    double height1 = height - padding.top - padding.bottom;

// Height (without status bar)
    double height2 = height - padding.top;

// Height (without status and toolbar)
    double height3 = height - padding.top - kToolbarHeight;

    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0.0,
        backgroundColor: customcolors.PrimaryWhite,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                      height: ScreenUtil().setHeight(180),
                      width: ScreenUtil().setHeight(180),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                  "Please Wait...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'sofia',
                    height: 1.3,
                    color: customcolors.PrimaryGreen,
                    fontSize: ScreenUtil().setSp(14),
                  ),
                ),
                      ),
                    ),
          ],
        ));
  }
}
