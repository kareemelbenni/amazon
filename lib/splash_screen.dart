import 'dart:async';
import 'package:amazon/models/api_model/apis_model.dart';
import 'package:amazon/transitions/fadeoutroute.dart';
import 'package:amazon/views/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'getx_controllers/main_controller.dart';
import 'utils/customcolors.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // late AnimationController rotationController;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    super.initState();
    initialization();

    // workaround for onLaunch: When the app is completely closed (not in the background) and opened directly from the push notification

    // rotationController = AnimationController(
    //     duration: const Duration(milliseconds: 3000), vsync: this);
  }

  startTime() async {
    Duration _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigation);
  }

  final controller = Get.put(Controller());
  void navigation() async {
    APISModel().getproducts(context).then((value) {
      controller.products = value;
      Navigator.pushReplacement(
        context,
        FadeRoute(
          page: HomeScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customcolors.PrimaryBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: ScreenUtil().setHeight(415.99),
              width: ScreenUtil().setHeight(430.87),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Image.asset(
                  "assets/img/logo.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isEnglish = false;
  initialization() async {
    // setState(() {});
    await startTime();

    // Navigator.push(
    //           context, FadeRoute(page: HomeScreen()));
  }
}
