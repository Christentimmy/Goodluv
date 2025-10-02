import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/modules/onboarding/controller/onboarding_controller.dart';
import 'package:goodluv/app/modules/onboarding/widgets/onboarding_widget.dart';
import 'package:goodluv/app/resources/colors.dart';
import 'package:goodluv/app/widgets/bg_gradient_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: bgGradientWidget(),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: controller.skip,
                  child: Text(
                    "Skip",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: controller.onboardingList.length,
                onPageChanged: controller.updateActiveIndex,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final onboarding = controller.onboardingList[index];
                  return buildOnboardingCard(onBoardingModel: onboarding);
                },
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Center(
              child: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.primaryColor,
                child: IconButton(
                  onPressed: controller.nextPage,
                  icon: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Obx(() {
              return AnimatedSmoothIndicator(
                activeIndex: controller.activeIndex.value,
                count: controller.onboardingList.length,
                effect: const JumpingDotEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  dotColor: Colors.white,
                  activeDotColor: AppColors.primaryColor,
                ),
              );
            }),
            SizedBox(height: Get.height * 0.03),
          ],
        ),
      ),
    );
  }
}
