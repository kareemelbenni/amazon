import 'dart:io';
// import 'package:atlantis/getx_controllers/main_controller.dart';
import 'package:amazon/getx_controllers/main_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/customcolors.dart';
import 'package:flutter/material.dart';

class MessageDialog extends StatefulWidget {
  String message;
  String message2;
  Function fc;
  Function fc2;
  MessageDialog(this.message, this.message2, this.fc, this.fc2);
  @override
  _MessageDialogState createState() => _MessageDialogState();
}

class _MessageDialogState extends State<MessageDialog> {
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15)),
          child: Container(
            height: ScreenUtil().setHeight(300),
            // width: ScreenUtil().setHeight(450),
            color: Colors.transparent,
            child: Center(
              child: Container(
                width: ScreenUtil().setHeight(430),
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'sofia',
                        height: 1.3,
                        color: customcolors.PrimaryGreen,
                        fontSize: ScreenUtil().setSp(40),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: widget.message2 != ""
                            ?MainAxisAlignment.spaceEvenly:MainAxisAlignment.center,
                      children: [
                        widget.message2 != ""
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(50)),
                                child: GestureDetector(
                                  onTap: widget.fc2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: customcolors.PrimaryPurple,
                                        borderRadius: BorderRadius.circular(
                                            ScreenUtil().setSp(17.43))),
                                    width: ScreenUtil().setWidth(207.28),
                                    height: ScreenUtil().setHeight(69.52),
                                    child: Center(
                                      child: Text(
                                        widget.message2,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "sofia",
                                          fontSize: ScreenUtil().setSp(33.09),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        Padding(
                          padding:
                              EdgeInsets.only(top: ScreenUtil().setHeight(50)),
                          child: GestureDetector(
                            onTap: widget.fc,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: customcolors.PrimaryPurple,
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setSp(17.43))),
                              width: ScreenUtil().setWidth(207.28),
                              height: ScreenUtil().setHeight(69.52),
                              child: Center(
                                child: Text(
                                  "OKAY",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "sofia",
                                    fontSize: ScreenUtil().setSp(33.09),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
