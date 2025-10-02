import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/resources/colors.dart';
import 'package:goodluv/app/routes/app_routes.dart';
import 'package:goodluv/app/widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

Form buildLoginFormFields({required GlobalKey<FormState> formKey}) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        CustomTextField(
          bgColor: Colors.white,
          prefixIcon: Icons.email,
          textStyle: GoogleFonts.fredoka(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          hintText: "Enter your email",
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
          hintText: "Enter your password",
          controller: TextEditingController(),
        ),
        InkWell(
          onTap: () => showForgotPasswordDialog(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot Password?",
                style: GoogleFonts.fredoka(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

void showForgotPasswordDialog() {
  Get.dialog(
    AlertDialog(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: AppColors.primaryColor.withOpacity(0.3)),
      ),
      title: Text(
        'Reset Password',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Enter your email address and we\'ll send you a code to reset your password.',
            style: GoogleFonts.fredoka(
              color: Colors.white.withOpacity(0.8),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            style: const TextStyle(color: Colors.white, fontSize: 13),
            decoration: InputDecoration(
              hintText: 'Email Address',
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
              fillColor: Colors.white.withOpacity(0.1),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: Text(
            'Cancel',
            style: GoogleFonts.fredoka(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () =>Get.toNamed(AppRoutes.resetpassword),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 82, 65),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Send Reset Link',
            style: GoogleFonts.fredoka(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}
