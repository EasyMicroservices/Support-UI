import 'const.dart';

import 'package:flutter/material.dart';

class AppTextStyles{
  static TextStyle titleLarge(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: color
    );
  }
  static TextStyle titleMedium(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: color
    );
  }
  static TextStyle titleSmall(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: color
    );
  }
  static TextStyle labelLarge(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: color
    );
  }
  static TextStyle labelMedium(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color
    );
  }
  static TextStyle labelSmall(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: color
    );
  }
  static TextStyle bodyLarge(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: color
    );
  }
  static TextStyle bodyMedium(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: color
    );
  }
  static TextStyle bodySmall(Color? color) {
    return TextStyle(
        fontFamily: primaryFont,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color
    );
  }
}