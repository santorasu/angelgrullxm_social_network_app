import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static ElevatedButtonThemeData get theme => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      fixedSize: Size(295.w, 56.h),
      elevation: 0.5,
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 19.h),  // Custom padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(99.r),
      ),
      textStyle: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
    ),
  );
}
