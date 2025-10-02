import 'package:get/get.dart';
import 'package:goodluv/app/modules/auth/views/login_screen.dart';
import 'package:goodluv/app/modules/auth/views/otp_screen.dart';
import 'package:goodluv/app/modules/auth/views/reset_password_screen.dart';
import 'package:goodluv/app/modules/auth/views/signup_screen.dart';
import 'package:goodluv/app/modules/home/views/home_screen.dart';
import 'package:goodluv/app/modules/onboarding/views/onboarding_screen.dart';
import 'package:goodluv/app/modules/policy/views/terms_and_condition_screen.dart';
import 'package:goodluv/app/modules/splash/views/splash_screen.dart';
import 'package:goodluv/app/modules/verification/views/face_verification_screen.dart';
import 'package:goodluv/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.otpscreen,
      page: () => OtpVerifyScreen(),
    ),
    GetPage(
      name: AppRoutes.resetpassword,
      page: () => ResetPasswordScreen(),
    ),
    GetPage(
      name: AppRoutes.termsandcondition,
      page: () => TermsAndConditionScreen(),
    ),
    GetPage(
      name: AppRoutes.faceverification,
      page: () => FaceVerificationScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
    ),
  ];
}