import 'package:flutter/material.dart';
import 'package:foody/utils/constants/colors.dart';

class AppInputTheme{
  AppInputTheme._();

  static final InputDecorationTheme appInputTheme= InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14,color: AppColor.primaryColor),
    border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(width: 1,color: Colors.grey)),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1,color: Colors.grey),
      borderRadius:  BorderRadius.circular(14),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1,color: Colors.grey),
      borderRadius:  BorderRadius.circular(14),
    ),
    errorBorder:const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1,color: Colors.red),
      borderRadius:  BorderRadius.circular(14),
    ),
    focusedErrorBorder:const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1,color: Colors.red),
      borderRadius:  BorderRadius.circular(14),
    ),
  );
}