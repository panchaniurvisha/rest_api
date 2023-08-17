import 'package:get/get.dart';
import 'package:rest_api/view/splash/splash_controller.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<SplashController>(SplashController());
  }
}
