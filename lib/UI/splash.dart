// ignore: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfin/controller/splash_controller.dart';

// ignore: must_be_immutable
class Splash extends StatelessWidget {
  SplashController splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    splashController.delaySplash();
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green[100],
        child: Center(
          child: Image.asset('assets/logo_big.png'),
        ),
      ),
    );
  }
}
