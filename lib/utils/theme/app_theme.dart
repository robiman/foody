import 'package:flutter/material.dart';
import 'package:foody/utils/constants/colors.dart';
import 'package:foody/utils/theme/input_theme.dart';
import 'package:foody/utils/theme/text_theme.dart';
class AppTheme{
  AppTheme._();
  static final ThemeData appTheme = ThemeData(
    fontFamily: "Manrope",
    scaffoldBackgroundColor: AppColor.bgColor,
    bottomAppBarColor: Colors.white,
    primaryColor: AppColor.primaryColor,
    textTheme: AppTextTheme.appTextTheme,
    inputDecorationTheme: AppInputTheme.appInputTheme,
    navigationBarTheme:const NavigationBarThemeData(backgroundColor: Colors.transparent),

  );
}