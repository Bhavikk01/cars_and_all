import 'package:cars_and_all/app/utils/size_utils.dart';
import 'package:cars_and_all/shared/color/app_color.dart';
import 'package:cars_and_all/shared/theme/theme_helper.dart';
import 'package:flutter/material.dart';

extension on TextStyle {
  // This extension applies the Poppins font family.
  TextStyle get poppins => copyWith(
        fontFamily: 'Poppins',
      );

  // This extension applies the Roboto font family.
  TextStyle get roboto => copyWith(
        fontFamily: 'Roboto',
      );
}

class CustomTextStyle {
  static get onError => TextStyle(color: theme.colorScheme.onError);

  static TextStyle txtPoppins18White500 = theme.textTheme.titleMedium!.copyWith(
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle txtPoppins12White300 = theme.textTheme.bodySmall!.copyWith(
    color: AppColors.white,
    fontWeight: FontWeight.w300,
  );
  static TextStyle txtPoppins14Black700 = theme.textTheme.bodyMedium!.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle txtPoppins10W400 = theme.textTheme.labelMedium!.copyWith(
    color: AppColors.secondaryTextColor,
    fontWeight: FontWeight.w400,
  );
  static TextStyle txtPoppins18Black500 = theme.textTheme.titleMedium!.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle txtPoppins16Black500 = theme.textTheme.bodyLarge!.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle txtPoppins20W700 = theme.textTheme.titleLarge!.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

}
