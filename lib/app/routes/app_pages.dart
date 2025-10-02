import 'package:get/get.dart';
import 'package:goodluv/app/modules/splash/views/splash_screen.dart';
import 'package:goodluv/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
    ),
  ];
}