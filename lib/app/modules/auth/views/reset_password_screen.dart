import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/routes/app_routes.dart';
import 'package:goodluv/app/widgets/bg_gradient_widget.dart';
import 'package:goodluv/app/widgets/custom_button.dart';
import 'package:goodluv/app/widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: bgGradientWidget(),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Reset Password",
                style: GoogleFonts.figtree(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.06),
            Text(
              "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.",
              textAlign: TextAlign.center,
              style: GoogleFonts.figtree(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: Get.height * 0.06),
            CustomTextField(
              bgColor: Colors.white,
              prefixIcon: Icons.lock,
              textStyle: GoogleFonts.fredoka(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              hintText: "Enter your current password",
              controller: TextEditingController(),
            ),
            SizedBox(height: Get.height * 0.01),
            CustomTextField(
              bgColor: Colors.white,
              prefixIcon: Icons.lock,
              textStyle: GoogleFonts.fredoka(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              hintText: "Enter your new password",
              controller: TextEditingController(),
            ),
            SizedBox(height: Get.height * 0.06),
            CustomButton(
              ontap: () => Get.offAllNamed(AppRoutes.login),
              isLoading: false.obs,
              child: Text(
                "Reset Password",
                style: GoogleFonts.fredoka(
                  color: Colors.white,
                  fontSize: 15,
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
