import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

    // startTime();
    // rotationController = AnimationController(
    //     duration: const Duration(milliseconds: 3000), vsync: this);
  }

  startTime() async {
    Duration _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigation);
  }

  void navigation() async {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customcolors.PrimaryGreen,
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
    setState(() {});
    startTime();
  }
}
