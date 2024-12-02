import 'package:flutter/material.dart';
import 'package:foody/utils/constants/colors.dart';

class AppTextTheme{
  AppTextTheme._();

  static final TextTheme appTextTheme = TextTheme(
    bodyLarge: const TextStyle(fontSize: 14,color: AppColor.primaryColor),
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0,fontWeight: FontWeight.bold,color:AppColor.primaryColor),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.bold,color:AppColor.primaryColor),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.bold,color:AppColor.primaryColor),

    bodyMedium: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w500,color:AppColor.primaryColor),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.w400,color:AppColor.primaryColor),
    
    labelLarge: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color:AppColor.primaryColor),

    labelSmall: const TextStyle().copyWith(fontSize: 14.0,fontWeight: FontWeight.bold,color:AppColor.primaryColor.withOpacity(0.5)),
  );
}