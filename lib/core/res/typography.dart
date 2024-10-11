import 'package:flutter/material.dart';

class FontTextStyle {
  // static String getFontFamily(String languageCode) {
  //   switch (languageCode) {
  //     case 'ar':
  //       return 'Rubik';
  //     case 'fa':
  //       return 'SFArabic';
  //     default:
  //       return 'Inter';
  //   }
  // }

  // Heading Styles
  static TextStyle h1({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 64,
      height: 56 / 64,
      letterSpacing: -1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins', // getFontFamily\(languageCode\)
    );
  }

  static TextStyle h2({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 48,
      height: 48 / 56,
      letterSpacing: -1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle h3({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 40,
      height: 40 / 48,
      letterSpacing: -1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle h4({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 32,
      height: 32 / 40,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle h5({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24,
      height: 24 / 32,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle h6({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 20 / 28,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  // Label Styles
  static TextStyle labelXLarge({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24,
      height: 24 / 32,
      letterSpacing: -1.5 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle labelLarge({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      height: 18 / 24,
      letterSpacing: -1.5 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle labelMedium({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 16 / 24,
      letterSpacing: -1.1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle labelSmall({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 14 / 20,
      letterSpacing: -0.6 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle labelXSmall({required String languageCode, Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 12 / 16,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  // Paragraph Styles
  static TextStyle paragraphXLarge({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      height: 24 / 32,
      letterSpacing: -1.5 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle paragraphLarge({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      height: 18 / 24,
      letterSpacing: -1.5 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle paragraphMedium({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 16 / 24,
      letterSpacing: -1.1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle paragraphSmall({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 14 / 20,
      letterSpacing: -0.6 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle paragraphXSmall({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 12 / 16,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  // Subheading Styles
  static TextStyle subheadingMedium({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 16 / 24,
      letterSpacing: 6 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle subheadingSmall({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 14 / 20,
      letterSpacing: 6 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle subheadingXSmall({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 12 / 16,
      letterSpacing: 4 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle subheading2XSmall({
    required String languageCode,
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 11,
      height: 11 / 12,
      letterSpacing: 2 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }
}
