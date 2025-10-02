import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/modules/onboarding/model/onboarding_model.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildOnboardingCard({required OnBoardingModel onBoardingModel}) {
  return Column(
    children: [
      Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(onBoardingModel.image, fit: BoxFit.cover),
        ),
      ),
      SizedBox(height: Get.height * 0.015),
      Text(
        onBoardingModel.title,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        onBoardingModel.description,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
