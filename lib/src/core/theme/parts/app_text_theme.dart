import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTextTheme {
  static final TextTheme darkTextTheme = TextTheme(

    ///display
    headlineLarge: GoogleFonts.robotoFlex(
      fontSize: 28.0.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.robotoFlex(
      fontSize: 28.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),
    headlineSmall: GoogleFonts.robotoFlex(
      fontSize: 24.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),

    ///title
    titleLarge: GoogleFonts.robotoFlex(
      fontSize: 24.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),
    titleMedium: GoogleFonts.robotoFlex(
      fontSize: 20.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),
    titleSmall: GoogleFonts.robotoFlex(
      fontSize: 18.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),

    ///body
    bodyLarge: GoogleFonts.robotoFlex(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),
    bodyMedium: GoogleFonts.robotoFlex(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),
    bodySmall: GoogleFonts.robotoFlex(
      fontSize: 12.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),

    ///label
    labelLarge: GoogleFonts.robotoFlex(
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),
    labelMedium: GoogleFonts.robotoFlex(
      fontSize: 12.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),
    labelSmall: GoogleFonts.robotoFlex(
      fontSize: 10.0.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E1126),
    ),
  );
}
