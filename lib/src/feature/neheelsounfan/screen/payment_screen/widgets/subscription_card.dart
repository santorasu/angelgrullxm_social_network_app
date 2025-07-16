import 'package:angelgrullxm_social_network_app/src/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../common_widgets/custom_bottom.dart';
import 'card_title.dart';

class PaymentCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String title2;
  final String subtitle2;
  final String description;
  final String buttonText;
  final String quality;
  final Color color;
  final Color rocketBackground;
  final Color borderColor;

  const PaymentCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.buttonText,
    required this.quality,
    required this.color,
    required this.rocketBackground,
    required this.borderColor, required this.title2, required this.subtitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //1st container
      //height: 165.h,
      padding: EdgeInsets.only(left: 8, bottom: 4, top: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
            //rocket box container
            width: 106.w,
            padding: EdgeInsets.only(top: 4,bottom: 8),
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
              children: [
                Container(
                  //Standard container
                  width: 100.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: borderColor),
                  ),
                  child: Text(
                    quality,
                    style: Theme.of(context).textTheme.bodyLarge,
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
          SizedBox(width: 4.w),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4,
                left: 4,
                bottom: 4,
                right: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardTitle(title: title, details: subtitle),
                  SizedBox(height: 4.h),
                  CardTitle(title: title2, details: subtitle2),
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    text: buttonText,
                    onTap: () {},
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
                    textSize: 20.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
