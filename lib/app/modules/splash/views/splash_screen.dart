import 'package:flutter/material.dart';
import 'package:goodluv/app/resources/colors.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/modules/splash/controller/splash_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, Color(0xFF1B1E31)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [buildLgoBouncingWidget(), buildSplashTitleWidget()],
        ),
      ),
    );
  }

  Center buildSplashTitleWidget() {
    return Center(
      child: Text(
        "Your path to forever starts here",
        style: GoogleFonts.poppins(color: Colors.white),
      ),
    );
  }

  Center buildLgoBouncingWidget() {
    return Center(
      child: AnimatedBuilder(
        animation: controller.controller,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, controller.bounceAnimation.value),
            child: Opacity(
              opacity: controller.fadeAnimation.value,
              child: Image.asset('assets/images/logo.png', height: 60),
            ),
          );
        },
      ),
    );
  }
}
