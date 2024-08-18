import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTheme {

  static const String fontFamily = 'Protofo';
  static const double horizontalPadding = 20;
  static const double verticalPadding = 20;
  static const double boardColumnWidth = 250;

  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: fontFamily,
      primaryColor: AppColors.kGhostWhiteColor,
      primaryColorLight: AppColors.kLightWhiteColor,
      primaryColorDark: AppColors.kWhiteColor,
      scaffoldBackgroundColor: AppColors.kGhostWhiteColor,
      splashColor: AppColors.kLightBlackColor,
      shadowColor: AppColors.kBlackColor,
      disabledColor: AppColors.kLightGreyColor,
      dividerColor: AppColors.kLightGreyColor,
      hintColor: AppColors.kLightGreyColor,
      brightness: Brightness.light,
      textTheme: TextTheme(
        titleSmall: TextStyle(
          color: AppColors.kBlackColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 24.sp,
          color: AppColors.kWhiteColor,
        ),
        headlineSmall: TextStyle(
          color: AppColors.kBlackColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: AppColors.kBlackColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: AppColors.kBlackColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: AppColors.kBlackColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: AppColors.kBlackColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: AppColors.kBlackColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      fontFamily: fontFamily,
      primaryColor: AppColors.kBlackColor,
      primaryColorLight: AppColors.kLightBlackColor,
      primaryColorDark: AppColors.kBlackColor,
      scaffoldBackgroundColor: AppColors.kBlackColor,
      splashColor: AppColors.kLightBlackColor,
      shadowColor: AppColors.kWhiteColor,
      disabledColor: AppColors.kLightGreyColor,
      dividerColor: AppColors.kLightGreyColor,
      hintColor: AppColors.kLightGreyColor,
      brightness: Brightness.dark,
      textTheme: TextTheme(
        titleSmall: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 24.sp,
          color: AppColors.kWhiteColor,
        ),
        headlineSmall: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: AppColors.kWhiteColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

}
