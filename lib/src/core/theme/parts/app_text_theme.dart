import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static final TextTheme customTextTheme = TextTheme(
    titleLarge: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 28.sp,
      fontWeight: FontWeight.w500,
    ),

    titleSmall: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    ),

  );
}
