import 'package:cars_and_all/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConstant {

  static TextStyle txtPoppins18White500 = GoogleFonts.poppins(
    color: ColorConstant.white,
    fontSize: 18,
    fontWeight: FontWeight.w500
  );

   static TextStyle txtPoppins12White300 = GoogleFonts.poppins(
    color: ColorConstant.white,
    fontSize: 12,
    fontWeight: FontWeight.w300
  );

   static TextStyle txtPoppins18Black500 = GoogleFonts.poppins(
    color: ColorConstant.black,
    fontSize: 18,
    fontWeight: FontWeight.w500
  );
   static TextStyle txtPoppins16Black500 = GoogleFonts.poppins(
    color: ColorConstant.black,
    fontSize: 16,
    fontWeight: FontWeight.w500
  );

   static TextStyle txtPoppins20W700 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700
  );


}