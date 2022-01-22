import 'dart:async';
import 'package:amazon/getx_controllers/main_controller.dart';
import 'package:amazon/transitions/fadeoutroute.dart';
import 'package:amazon/views/productScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../utils/customcolors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
          child: FaIcon(
            FontAwesomeIcons.bars,
            color: Colors.black,
            size: ScreenUtil().setSp(40),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: ScreenUtil().setWidth(30),
              top: ScreenUtil().setHeight(20),
            ),
            child: FaIcon(
              FontAwesomeIcons.shoppingCart,
              color: Colors.black,
              size: ScreenUtil().setSp(40),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(10),
                right: ScreenUtil().setSp(20),
                left: ScreenUtil().setSp(20),
              ),
              child: Container(
                // width: ScreenUtil().setWidth(700),
                height: ScreenUtil().setHeight(70),
                decoration: BoxDecoration(
                  color: Color(0XFFEFEFEF),
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setSp(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(20),
                            right: ScreenUtil().setWidth(20),
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.search,
                            color: Colors.black,
                            size: ScreenUtil().setSp(30),
                          ),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(540),
                          // height: ScreenUtil().setHeight(50),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: "What are you looking for?",
                              // labelText: "Address",
                              labelStyle: TextStyle(
                                color: customcolors.PrimaryBlue,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: ScreenUtil().setWidth(20),
                        // top: ScreenUtil().setHeight(20),
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.qrcode,
                        color: Colors.black,
                        size: ScreenUtil().setSp(35),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(ScreenUtil().setSp(20)),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2 / 2.9,
                        crossAxisSpacing: ScreenUtil().setSp(20),
                        mainAxisSpacing: ScreenUtil().setSp(20)),
                    itemCount: controller.products.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            FadeRoute(
                              page: ProductScreen(controller.products[index]),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(ScreenUtil().setSp(20)),
                                child: Container(
                                  width: ScreenUtil().setWidth(310),
                                  height: ScreenUtil().setWidth(310),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        ScreenUtil().setSp(12),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            controller.products[index].image,
                                            // fit: BoxFit.cover,
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: ScreenUtil().setSp(20)),
                                child: Row(
                                  children: [
                                    Text(
                                      "${controller.products[index].currency} ${controller.products[index].price}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                        color: customcolors.PrimaryGreen,
                                        fontSize: ScreenUtil().setSp(30),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: ScreenUtil().setSp(20),
                                  top: ScreenUtil().setHeight(8),
                                ),
                                child: Container(
                                  child: Text(
                                    "${controller.products[index].title}",
                                    maxLines: 2,
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      height: 1.3,
                                      color: customcolors.PrimaryGreen,
                                      fontSize: ScreenUtil().setSp(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0XFFEFEFEF),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isEnglish = false;
  initialization() async {}
}
