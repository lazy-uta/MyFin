import 'package:get/get.dart';
import 'package:myfin/main.dart';

class SplashController extends GetxController {
  delaySplash() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(Home());
    });
  }
}
