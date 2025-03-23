// import 'package:cars_and_all/shared/color/app_color.dart';
// import 'package:flutter/material.dart';
//
// class AppThemes {
//   const AppThemes._();
//
//   static final themeLight = ThemeData(
//     colorScheme: ColorScheme.light(
//       primary: AppColors.primaryLight,
//       secondary: AppColors.secondaryLight,
//       surface: AppColors.backgroundLight,
//     ),
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//         fillColor: AppColors.surfaceLight,
//         hintStyle: TextStyle(color: AppColors.secondaryTextColor,fontWeight: FontWeight.w100),
//
//         border: OutlineInputBorder(
//           borderSide: BorderSide.none,
//           borderRadius: BorderRadius.circular(10)
//         )),
//     dividerTheme: DividerThemeData(color: AppColors.dividerColorLight),
//
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         backgroundColor: AppColors.primaryLight,
//         foregroundColor: AppColors.surfaceLight,
//         textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
//         minimumSize: Size(160, 52)
//
//       )
//     ),
//
//     /// Old theme
//     /*textTheme: GoogleFonts.poppinsTextTheme(const TextTheme())*/
//     textTheme: const TextTheme(
//       bodyLarge: TextStyle(fontFamily: 'Roboto'),
//       bodyMedium: TextStyle(fontFamily: 'Roboto'),
//       displayLarge: TextStyle(fontFamily: 'Roboto'),
//       displayMedium: TextStyle(fontFamily: 'Roboto'),
//       displaySmall: TextStyle(fontFamily: 'Roboto'),
//
//       headlineMedium: TextStyle(fontFamily: 'Roboto'),
//       headlineSmall: TextStyle(fontFamily: 'Roboto'),
//       titleLarge: TextStyle(fontFamily: 'Roboto'),
//       titleMedium: TextStyle(fontFamily: 'Roboto'),
//       titleSmall: TextStyle(fontFamily: 'Roboto'),
//       bodySmall: TextStyle(fontFamily: 'Roboto'),
//       labelLarge: TextStyle(fontFamily: 'Roboto'),
//       labelSmall: TextStyle(fontFamily: 'Roboto'),
//     ),
//   );
//   static final themeDark = ThemeData(
//     colorScheme: ColorScheme.dark(
//         primary: AppColors.primaryDark,
//         secondary: AppColors.secondaryDark,
//         surface: AppColors.surfaceDark,
//         background: AppColors.backgroundDark),
//     inputDecorationTheme: InputDecorationTheme(
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
//     dividerTheme: DividerThemeData(color: AppColors.dividerColorDark),
//     /*textTheme: GoogleFonts.poppinsTextTheme(const TextTheme())*/
//     textTheme: const TextTheme(
//       bodyLarge: TextStyle(fontFamily: 'Roboto'),
//       bodyMedium: TextStyle(fontFamily: 'Roboto'),
//       displayLarge: TextStyle(fontFamily: 'Roboto'),
//       displayMedium: TextStyle(fontFamily: 'Roboto'),
//       displaySmall: TextStyle(fontFamily: 'Roboto'),
//       headlineMedium: TextStyle(fontFamily: 'Roboto'),
//       headlineSmall: TextStyle(fontFamily: 'Roboto'),
//       titleLarge: TextStyle(fontFamily: 'Roboto'),
//       titleMedium: TextStyle(fontFamily: 'Roboto'),
//       titleSmall: TextStyle(fontFamily: 'Roboto'),
//       bodySmall: TextStyle(fontFamily: 'Roboto'),
//       labelLarge: TextStyle(fontFamily: 'Roboto'),
//       labelSmall: TextStyle(fontFamily: 'Roboto'),
//     ),
//   );
// }