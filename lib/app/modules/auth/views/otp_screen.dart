import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/controller/timer_controller.dart';
import 'package:goodluv/app/resources/colors.dart';
import 'package:goodluv/app/widgets/bg_gradient_widget.dart';
import 'package:goodluv/app/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final timerController = Get.put(TimerController());

  @override
  void initState() {
    super.initState();
    timerController.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      body: Container(
        decoration: bgGradientWidget(),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.02),
            IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            SizedBox(height: Get.height * 0.02),
            Center(
              child: Text(
                "We just sent an SMS",
                style: GoogleFonts.figtree(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: Text(
                "Please enter the 6-digit code sent to you",
                textAlign: TextAlign.center,
                style: GoogleFonts.figtree(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Center(
              child: Pinput(
                length: 6,
                closeKeyboardWhenCompleted: true,
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                submittedPinTheme: submittedPinTheme(),
                focusedPinTheme: focusedPinTheme(),
                defaultPinTheme: defaultPinTheme(),
                // onCompleted: (value) => Get.toNamed(AppRoutes.updateName),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            resendOtpRow(),
            const Spacer(),
            CustomButton(
              ontap: () {},
              isLoading: false.obs,
              child: Text(
                "Submit",
                style: GoogleFonts.figtree(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget resendOtpRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Didn't receive the code? ",
          style: GoogleFonts.figtree(fontSize: 16, color: AppColors.effectDark),
        ),
        Obx(
          () => InkWell(
            onTap: () async {
              timerController.startTimer();
            },
            child: timerController.secondsRemaining.value == 0
                ? Text(
                    "Resend",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Text(
                    "(${timerController.secondsRemaining.value.toString()})",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
      ],
    );
  }

  PinTheme? submittedPinTheme() {
    return PinTheme(
      width: Get.width * 0.15,
      height: Get.height * 0.07,
      textStyle: GoogleFonts.figtree(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xFFE8E6EA)),
        color: AppColors.primaryColor,
      ),
    );
  }

  PinTheme? focusedPinTheme() {
    return PinTheme(
      width: Get.width * 0.15,
      height: Get.height * 0.07,
      textStyle: GoogleFonts.figtree(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: AppColors.primaryColor,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.primaryColor),
        color: Colors.transparent,
      ),
    );
  }

  PinTheme? defaultPinTheme() {
    return PinTheme(
      width: Get.width * 0.15,
      height: Get.height * 0.07,
      textStyle: GoogleFonts.figtree(fontWeight: FontWeight.w600, fontSize: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xFFE8E6EA)),
        color: Get.isDarkMode ? Colors.transparent : Colors.white,
      ),
    );
  }
}
