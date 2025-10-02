import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

Form buildSignUpFormFields({required GlobalKey<FormState> formKey}) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        CustomTextField(
          prefixIcon: Icons.person,
          bgColor: Colors.white,
          textStyle: GoogleFonts.fredoka(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          hintText: "Enter your name",
          controller: TextEditingController(),
        ),
        SizedBox(height: Get.height * 0.01),
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
      ],
    ),
  );
}
