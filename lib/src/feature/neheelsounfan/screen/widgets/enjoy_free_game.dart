import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EnjoyFreeGame extends StatelessWidget {
  const EnjoyFreeGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311.w,
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Color(0xff555A92),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Text(
            'Standard Game',
            style: GoogleFonts.robotoFlex(
              fontSize: 22.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffE0E0FF),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            '3 Game, Maximum 4 Player in a Room',
            style: GoogleFonts.robotoFlex(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffE0E0FF),
            ),
          ),
        ],
      ),
    );
  }
}
