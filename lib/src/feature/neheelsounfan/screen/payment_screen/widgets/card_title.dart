import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.title, required this.titleR});
  final String title;
  final String titleR;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.robotoFlex(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff2E1126),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          titleR,
          style: GoogleFonts.robotoFlex(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff2E1126),
          ),
        ),
      ],
    );
  }
}
