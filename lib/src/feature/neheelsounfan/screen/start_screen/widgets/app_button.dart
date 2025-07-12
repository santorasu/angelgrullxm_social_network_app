import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SvgButton extends StatelessWidget {
  final String? svgAsset;
  final String? text;
  final SvgPicture? icon;
  final double width;
  final double height;
  final VoidCallback onTap;
  final TextStyle? textStyle;

  const SvgButton({
    super.key,
    required this.svgAsset,
    this.text,
    this.icon,
    required this.onTap,
    this.width = 229,
    this.height = 58,
    this.textStyle,
  })  : assert(text != null || icon != null, 'Either text or icon must be provided');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              svgAsset!,
              width: width.w,
              height: height.h,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 16.h),
              child: text != null
                  ? Text(
                text!,
                style: textStyle ??
                    TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto Flex',
                      color: Colors.white,
                    ),
              )
                  : icon!,
            ),
          ],
        ),
      ),
    );
  }
}
