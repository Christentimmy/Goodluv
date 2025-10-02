import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/resources/colors.dart';
import 'package:goodluv/app/widgets/bg_gradient_widget.dart';
import 'package:goodluv/app/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class FaceVerificationScreen extends StatelessWidget {
  const FaceVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Face Verification',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        decoration: bgGradientWidget(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.12),
            Text(
              'AI Face Verification',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/pic4.jpg', fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Text(
              "Ensure you’re in a well-lit area.",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            CustomButton(
              ontap: () {},
              isLoading: false.obs,
              child: Text(
                'Proceed',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
