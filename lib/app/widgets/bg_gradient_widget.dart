import 'package:flutter/cupertino.dart';
import 'package:goodluv/app/resources/colors.dart';

BoxDecoration bgGradientWidget() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [AppColors.primaryColor, Color(0xFF1B1E31)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
