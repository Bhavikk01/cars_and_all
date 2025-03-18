import 'package:flutter/material.dart';

class AppColors{
  const AppColors._();
  // Common
  static final Color secondaryTextColor = Colors.grey.shade500;
  static final Color secondaryTextDrkColor = Colors.grey.shade800;



  // Light Theme Colors
  static const Color primaryLight = Color(0xFFFF640D);
  static const Color secondaryLight = Color(0xFF0094DA);
  static const Color surfaceLight = Colors.white;
  static final Color backgroundLight = Color(0xffE5E5E5);
  static final Color dividerColorLight = Colors.grey.shade300;

  // Dark Theme Color
  static const Color primaryDark = Color(0xFF4B8501);
  static final Color secondaryDark = const Color(0xFF2FA3D9).withOpacity(0.7);
  static final Color surfaceDark = Colors.grey.shade800;
  static const Color backgroundDark = Colors.black;
  static final Color dividerColorDark = Colors.grey.shade50;

}