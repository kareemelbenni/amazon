import 'dart:async';
import 'package:amazon/getx_controllers/main_controller.dart';
import 'package:amazon/models/data_models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../utils/customcolors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductScreen extends StatefulWidget {
  Product product;
  ProductScreen(this.product);
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>
    with TickerProviderStateMixin {
  // late AnimationController rotationController;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    super.initState();
    initialization();
  }

  void navigation() async {}

  @override
  void dispose() {
    super.dispose();
  }

  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          width: ScreenUtil().setWidth(150),
          height: ScreenUtil().setHeight(50),
          child: Image.asset('assets/img/amazonlogo.png'),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(30),
            top: ScreenUtil().setHeight(20),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.black,
              size: ScreenUtil().setSp(40),
            ),
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(
        //       right: ScreenUtil().setWidth(30),
        //       top: ScreenUtil().setHeight(20),
        //     ),
        //     child: FaIcon(
        //       FontAwesomeIcons.shoppingCart,
        //       color: Colors.black,
        //       size: ScreenUtil().setSp(40),
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(ScreenUtil().setSp(20)),
                child: Container(
                  width: double.infinity,
                  height: ScreenUtil().setWidth(600),
                  decoration: BoxDecoration(
                      color: Color(0XFFEFEFEF),
                      borderRadius: BorderRadius.circular(
                        ScreenUtil().setSp(17),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.product.image,
                            // fit: BoxFit.cover,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setSp(20)),
                child: Row(
                  children: [
                    Text(
                      "${widget.product.currency} ${widget.product.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 1,
                        color: customcolors.PrimaryGreen,
                        fontSize: ScreenUtil().setSp(40),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setSp(20),
                  right: ScreenUtil().setSp(20),
                  top: ScreenUtil().setHeight(8),
                ),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    "${widget.product.title}",
                    // maxLines: 2,
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      height: 1.3,
                      color: customcolors.PrimaryGreen,
                      fontSize: ScreenUtil().setSp(40),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(ScreenUtil().setSp(40)),
            child: Container(
              width: double.infinity,
              height: ScreenUtil().setHeight(85),
              child: Center(
                  child: Text(
                "Add to cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1,
                  color: customcolors.PrimaryWhite,
                  fontSize: ScreenUtil().setSp(35),
                ),
              )),
              decoration: BoxDecoration(
                color: Color(0XFFE47911),
                borderRadius: BorderRadius.circular(ScreenUtil().setSp(25))
              ),
            ),
          )
        ],
      ),
    );
  }

  bool isEnglish = false;
  initialization() async {}
}
