import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/routes/routes_name.dart';

class SplashController extends GetxController {
  navigate() {
    Future.delayed(
      const Duration(seconds: 5),
      () => Get.offAllNamed(RoutesName.homeScreen),
    );
  }

  @override
  void onReady() {
    debugPrint("onReady-------->");
    super.onReady();
  }

  @override
  void onInit() {
    debugPrint("onInit-------->");
    navigate();
    super.onInit();
  }
}
