import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/modules/auth/widgets/signup_widgets.dart';
import 'package:goodluv/app/resources/colors.dart';
import 'package:goodluv/app/routes/app_routes.dart';
import 'package:goodluv/app/widgets/bg_gradient_widget.dart';
import 'package:goodluv/app/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: bgGradientWidget(),
        child: ListView(
          children: [
            SizedBox(height: Get.height * 0.1),
            Image.asset('assets/images/logo.png', height: 50),
            SizedBox(height: Get.height * 0.007),
            Center(
              child: Text(
                "Create Account",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: Text(
                "Love on purpose",
                style: GoogleFonts.fredoka(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.06),
            buildSignUpFormFields(formKey: formKey),
            SizedBox(height: Get.height * 0.06),
            CustomButton(
              ontap: () => Get.toNamed(AppRoutes.otpscreen),
              isLoading: false.obs,
              child: Text(
                "Sign Up",
                style: GoogleFonts.fredoka(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.045),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Divider(color: Colors.white, thickness: 1)),
                SizedBox(width: 10),
                Text(
                  "OR",
                  style: GoogleFonts.fredoka(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(child: Divider(color: Colors.white, thickness: 1)),
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.google, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.apple,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.fredoka(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.login),
                  child: Text(
                    "Login",
                    style: GoogleFonts.fredoka(
                      color: AppColors.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
