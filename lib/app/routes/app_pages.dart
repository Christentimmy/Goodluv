import 'package:get/get.dart';
import 'package:goodluv/app/modules/splash/splash_screen.dart';
import 'package:goodluv/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
    ),
  ];
}