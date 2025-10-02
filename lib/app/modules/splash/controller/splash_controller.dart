import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:goodluv/app/routes/app_routes.dart';

class SplashController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> bounceAnimation;
  late Animation<double> fadeAnimation;

  @override
  void onInit() {
    super.onInit();
    initializeAnimations();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void initializeAnimations() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    controller.repeat(reverse: true);

    bounceAnimation = Tween<double>(begin: -50.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.6, curve: Curves.bounceOut),
      ),
    );

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
      ),
    );

    Future.delayed(const Duration(seconds: 3), () async {
      // final userController = Get.find<UserController>();
      // final socketController = Get.find<SocketController>();
      // final storageController = Get.find<StorageController>();

      // bool newUser = await storageController.getUserStatus();
      // if (newUser) {
      //   Get.offAll(AppRoutes.onboarding);
      //   await storageController.saveStatus("notNewAgain");
      //   return;
      // }
      // String? token = await storageController.getToken();
      // if (token == null || token.isEmpty) {
      //   Get.offAllNamed(AppRoutes.login);
      //   return;
      // }
      Get.offNamed(AppRoutes.onboarding);
    });
  }
}
