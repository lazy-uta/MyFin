// ignore: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfin/controller/goal_controller.dart';
import 'package:myfin/controller/splash_controller.dart';
import 'package:myfin/controller/user_controller.dart';

// ignore: must_be_immutable
class Splash extends StatelessWidget {
  SplashController splashController = Get.put(SplashController());
  UserController userController = Get.put(UserController(), permanent: true);
  GoalController goalController = Get.put(GoalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    goalController.calculate();
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
