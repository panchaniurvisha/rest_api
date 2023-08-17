import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/res/constant/app_images.dart';
import 'package:rest_api/res/constant/app_string.dart';
import 'package:rest_api/view/splash/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppString.splashTitle),
        ),
        body: Center(
          child: Image.asset(AppImages.getXLogo),
        ));
  }
}
