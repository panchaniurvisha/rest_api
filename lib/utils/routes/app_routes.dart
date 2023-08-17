import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rest_api/utils/routes/routes_name.dart';
import 'package:rest_api/view/home/home_bindings.dart';
import 'package:rest_api/view/home/home_screen.dart';
import 'package:rest_api/view/splash/splash_bindings.dart';
import 'package:rest_api/view/splash/splash_screen.dart';

class AppRoutes {
  static List<GetPage> getPages = [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBindings(),
    ),
    GetPage(
        name: RoutesName.homeScreen,
        page: () => const HomeScreen(),
        binding: HomeBindings())
  ];
}
