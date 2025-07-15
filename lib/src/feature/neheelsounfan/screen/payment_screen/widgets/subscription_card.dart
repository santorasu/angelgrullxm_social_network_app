import 'package:angelgrullxm_social_network_app/src/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../common_widgets/custom_bottom.dart';
import 'card_title.dart';

class PaymentCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String buttonText;
  final Function? onTap;
  final String quality;
  final Color color;
  final Color rocketBackground;

  const PaymentCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.buttonText,
    required this.onTap,
    required this.quality,
    required this.color,
    required this.rocketBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
            width: 106.w,
            height: 145.h,
            decoration: BoxDecoration(
              color: rocketBackground,
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
                  width: 100.w,
                  height: 32.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Color(0xff1D5128)),
                  ),
                  child: Text(
                    quality,
                    style: GoogleFonts.robotoFlex(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2E1126),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Image.asset(
                  AppImages.rocketPng,
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    CardTitle(title: 'Games', titleR: 'Max Players'),
                    SizedBox(width: 21.w),
                    CardTitle(title: ': 6 games', titleR: ': Up to 8 players'),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  description,
                  style: GoogleFonts.robotoFlex(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2E1126),
                  ),
                ),
                SizedBox(height: 8.h),
                CustomButton(
                  text: buttonText,
                  onTap: () => onTap!(),
                  height: 42.h,
                  width: 228.w,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffF2E792),
                      Color(0xffF8B133),
                      Color(0xffDE712B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: 8.r,
                  borderColor: Color(0xff2E1126),
                  textColor: Color(0xff2E1126),
                  textSize: 16.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
