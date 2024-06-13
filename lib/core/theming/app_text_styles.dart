import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaghalni/core/theming/app_colors.dart';

import '../helpers/font_weight_helper.dart';

abstract class AppTextStyles {
  static final poppins14Normal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.dark,
    fontFamily: "Poppins",
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.lightGrey,
    fontFamily: "Poppins",
  );

    static TextStyle font12LightGrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.lightGrey,
    fontFamily: "Poppins",
  );

  static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryColor,
    fontFamily: "Poppins",
  );

  static TextStyle font18WhiteMedium = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font15NormalBlack = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font18BoldBlack = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: "Poppins",
  );

    static TextStyle font14BoldBlack = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font18BoldWhite = GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle font18GreyW300 = GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.w300, color: Colors.grey);

  static TextStyle font13GreyW300 = GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w300, color: Colors.grey);

  static TextStyle font13WhiteW300 = GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w300, color: Colors.white);

  static TextStyle font14BlueW300 = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue);

  static TextStyle font14BlackW300 = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle font14DarkBlueMedium = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.darkBlue);

  static TextStyle font16Regular = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font28SemiBoldWhite = GoogleFonts.poppins(
      fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle font20SemiBoldWhite = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle font35SemiBoldBlue = GoogleFonts.poppins(
      fontSize: 35, fontWeight: FontWeight.w600, color: AppColors.primaryColor);

  static TextStyle font24BoldBlack = GoogleFonts.poppins(
      fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle font14BoldBlue = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primaryColor);

  static TextStyle get font15DarkMedium => GoogleFonts.fredoka(
      color: AppColors.dark,
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.medium);

  static TextStyle get font15Dark60Regular => GoogleFonts.fredoka(
      color: AppColors.dark60,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular);
}
