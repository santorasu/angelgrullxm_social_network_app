import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final double? borderRadius;
  final double? height;
  final double? width;
  final Color? textColor;
  final double? textSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
    this.borderRadius = 32,
    this.height = 56,
    this.width = 295,
    this.textColor = Colors.white,
    this.textSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height!.h,
        width: width!.w,
        decoration: BoxDecoration(
          gradient: color == null
              ? LinearGradient(
                  colors: [
                    Color(0xffC84EA3),
                    Color(0xffB763BE),
                    Color(0xffB06CC9),
                    Color(0xff8F94FB),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
          color: color,
          borderRadius: BorderRadius.circular(borderRadius!.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              fontSize: textSize!.sp,
            ),
          ),
        ),
      ),
    );
  }
}
