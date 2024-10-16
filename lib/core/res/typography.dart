import 'package:flutter/material.dart';
import 'package:flutter_bloc_tdd_clean_architecture/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  static TextStyle h1({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 64.sp,
      height: 56 / 57,
      letterSpacing: -1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins', // getFontFamily\(languageCode\)
    );
  }

  static TextStyle h2({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 48.sp,
      height: 48 / 49,
      letterSpacing: -1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle h3({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 40.sp,
      height: 40 / 41,
      letterSpacing: -1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle h4({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 32.sp,
      height: 32 / 33,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle h5({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24.sp,
      height: 24 / 25,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle h6({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20.sp,
      height: 20 / 21,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  // Label Styles
  static TextStyle labelXLarge({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 24.sp,
      height: 24 / 25,
      letterSpacing: -1.5 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle labelLarge({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18.sp,
      height: 18 / 19,
      letterSpacing: -1.5 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle labelMedium({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      height: 16 / 17,
      letterSpacing: -1.1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle labelSmall({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14.sp,
      height: 14 / 15,
      letterSpacing: -0.6 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle labelXSmall({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12.sp,
      height: 12 / 13,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  // Paragraph Styles
  static TextStyle paragraphXLarge({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24.sp,
      height: 24 / 25,
      letterSpacing: -1.5 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle paragraphLarge({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18.sp,
      height: 18 / 19,
      letterSpacing: -1.5 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle paragraphMedium({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16.sp,
      height: 1.2,
      letterSpacing: -1.1 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle paragraphSmall({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      height: 14 / 15,
      letterSpacing: -0.6 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle paragraphXSmall({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12.sp,
      height: 12 / 13,
      letterSpacing: 0,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  // Subheading Styles
  static TextStyle subheadingMedium({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      height: 16 / 17,
      letterSpacing: 6 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle subheadingSmall({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14.sp,
      height: 14 / 15,
      letterSpacing: 6 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle subheadingXSmall({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12.sp,
      height: 12 / 13,
      letterSpacing: 4 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle subheading2XSmall({
    Color? color,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 11.sp,
      height: 11 / 12,
      letterSpacing: 2 / 100,
      color: color ?? Colors.black,
      fontFamily: 'Poppins',
    );
  }
}
