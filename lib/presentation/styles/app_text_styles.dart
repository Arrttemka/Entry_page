import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:entry_page/presentation/styles/app_colors.dart';

class AppTextStyles {
  static final TextStyle titleText = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 32,
    height: 1.0,
    letterSpacing: 0,
    color: Colors.black,
  );

  static final TextStyle subtitleText = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.14,
    color: AppColors.greyText
  );

  static final TextStyle phoneNumber = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0,
      color: AppColors.greyText
  );

  static final TextStyle buttonText = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0,
  );

  static final TextStyle phoneCode = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0,
    color: Colors.black,
  );
}