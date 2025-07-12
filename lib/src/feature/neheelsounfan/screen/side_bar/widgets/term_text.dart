import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsText extends StatelessWidget {
  final String text;

  const TermsText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Roboto Flex",
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: Color(0xffBEC2FF),
      ),
    );
  }
}

class CircleIndicator extends StatelessWidget {
  const CircleIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 6.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        color: Color(0xff858BD5),
      ),
    );
  }
}