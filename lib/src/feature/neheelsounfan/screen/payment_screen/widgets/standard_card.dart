import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:angelgrullxm_social_network_app/src/feature/common_widgets/custom_bottom.dart';
import 'package:google_fonts/google_fonts.dart'; // Assuming CustomButton is already implemented.

class StandardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final String imagePath;
  final List<Color> gradientColors;
  final String buttonTextColor;
  final String buttonBorderColor;
  final VoidCallback onButtonTap;

  const StandardCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.imagePath,
    required this.gradientColors,
    required this.buttonTextColor,
    required this.buttonBorderColor,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 165.h,
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: Color(0xffB8F1B9),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffB8F1B9),
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(34, 34, 34, 0.20),
                  spreadRadius: 10.r,
                  blurRadius: 10.r,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Color(0xff1D5128)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                    child: Text(title),
                  ),
                ),
                SizedBox(height: 5.h),
                Image.asset(
                  imagePath,
                  height: 100.h,
                  width: 100.w,
                ),
              ],
            ),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: GoogleFonts.robotoFlex(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2E1126),
                      ),
                    ),
                    SizedBox(width: 21.w),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  'Get your game on with 3 quick rounds of fun with your friends!',
                  style: GoogleFonts.robotoFlex(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2E1126),
                  ),
                ),
                SizedBox(height: 8.h),
                CustomButton(
                  text: buttonText,
                  onTap: onButtonTap,
                  height: 42.h,
                  width: 228.w,
                  gradient: LinearGradient(
                    colors: gradientColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: 8.r,
                  borderColor: Color(0xff2E1126),
                  textColor: Color(int.parse(buttonTextColor)),
                  textSize: 20.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
