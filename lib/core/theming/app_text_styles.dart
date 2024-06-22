import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaghalni/core/theming/app_colors.dart';

import '../helpers/font_weight_helper.dart';

abstract class AppTextStyles {
  static final poppins14Normal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.dark,
    fontFamily: "Poppins",
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.lightGrey,
    fontFamily: "Poppins",
  );

  static TextStyle font12LightGrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.lightGrey,
    fontFamily: "Poppins",
  );

  static TextStyle font10LightGrayRegular = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.lightGrey,
    fontFamily: "Poppins",
  );

  static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.primaryColor,
    fontFamily: "Poppins",
  );

  static TextStyle font12BlackRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font18WhiteMedium = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font15NormalBlack = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font18BoldBlack = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font14BoldBlack = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font12BoldBlack = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static TextStyle font14BoldRockBlue = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.rockBlue,
    fontFamily: "Poppins",
  );
  static TextStyle font18BoldWhite = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font22BoldWhite = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font20SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font16SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
    fontFamily: "Poppins",
  );

  static TextStyle font14BoldBlue = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColor,
    fontFamily: "Poppins",
  );

  static TextStyle font12BoldBlue = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColor,
    fontFamily: "Poppins",
  );

  static TextStyle font14DarkBlueBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.darkBlue,
    fontFamily: "Poppins",
  );
  static TextStyle font12DarkBlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.darkBlue,
    fontFamily: "Poppins",
  );

  static TextStyle get font15DarkMedium => GoogleFonts.fredoka(
      color: AppColors.dark,
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font18GreyW300 = GoogleFonts.poppins(
      fontSize: 18.sp, fontWeight: FontWeight.w300, color: Colors.grey);

  static TextStyle font13GreyW300 = GoogleFonts.poppins(
      fontSize: 13.sp, fontWeight: FontWeight.w300, color: Colors.grey);

  static TextStyle font13WhiteW300 = GoogleFonts.poppins(
      fontSize: 13.sp, fontWeight: FontWeight.w300, color: Colors.white);

  static TextStyle font14BlueW300 = GoogleFonts.poppins(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.blue);

  static TextStyle font14BlackW300 = GoogleFonts.poppins(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle font14DarkBlueMedium = GoogleFonts.poppins(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.darkBlue);

  static TextStyle font16Regular = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font28SemiBoldWhite = GoogleFonts.poppins(
      fontSize: 28.sp, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle font35SemiBoldBlue = GoogleFonts.poppins(
      fontSize: 35.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor);

  static TextStyle font24BoldBlack = GoogleFonts.poppins(
      fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle get font15Dark60Regular => GoogleFonts.fredoka(
      color: AppColors.dark60,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular);
}
