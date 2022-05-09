import 'package:flutter/material.dart';

extension CustomTextStyle on TextTheme {
  TextStyle get medium =>
      const TextStyle(fontWeight: FontWeight.w500); //Nunito-Medium.ttf
  TextStyle get regular =>
      const TextStyle(fontWeight: FontWeight.w400); //Nunito-Regular.ttf
  TextStyle get bold =>
      const TextStyle(fontWeight: FontWeight.w700); //Nunito-Bold.ttf
  TextStyle get semibold =>
      const TextStyle(fontWeight: FontWeight.w600); //Nunito-Bold.ttf
  TextStyle get extraBold =>
      const TextStyle(fontWeight: FontWeight.w800); //Nunito-Bold.ttf
  TextStyle get light =>
      const TextStyle(fontWeight: FontWeight.w300); //Nunito-Light.ttf

}
