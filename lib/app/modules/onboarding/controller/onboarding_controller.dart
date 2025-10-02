import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/modules/onboarding/model/onboarding_model.dart';

class OnboardingController extends GetxController {
 
  PageController pageController = PageController();

  final onboardingList = [
    OnBoardingModel(
      title: "Comparability Matching",
      description: "Find partners who align with your vision & purpose",
      image: "assets/images/pic1.jpeg",
    ),
    OnBoardingModel(
      title: "Personality Insights",
      description: "Learn how your traits shape your relationships",
      image: "assets/images/pic2.jpg",
    ),
    OnBoardingModel(
      title: "Scientific-Based Algorithm",
      description: "Grounded in research for meaningful connections",
      image: "assets/images/pic3.jpg",
    ),
    OnBoardingModel(
      title: "Curated Matchmaking",
      description: "Real-time filtering for high-quality matches",
      image: "assets/images/pic4.jpg",
    ),
  ];

  RxInt activeIndex = 0.obs;

  void updateActiveIndex(int value) {
    activeIndex.value = value;
  }

  void skip() {
    // Get.offNamed(AppRoutes.login);
  }

  void nextPage() {
    if (activeIndex.value < onboardingList.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      // Get.offNamed(AppRoutes.login);
    }
  }
}
