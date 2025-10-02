import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/resources/colors.dart';
import 'package:goodluv/app/routes/app_pages.dart';
import 'package:goodluv/app/routes/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Goodluv",
      initialRoute: AppRoutes.splash,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
     defaultTransition: Transition.fadeIn, 
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        primaryColor: Color(0xFF5CE9CD),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.primaryColor,
          selectionHandleColor: AppColors.primaryColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}
