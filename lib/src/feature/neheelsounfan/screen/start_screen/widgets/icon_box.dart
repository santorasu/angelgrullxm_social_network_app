import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconBox extends StatelessWidget {
  final Widget icon;
  final Color backgroundColor;
  final double size;
  final double padding;
  final double borderRadius;

  const IconBox({
    Key? key,
    required this.icon,
    required this.backgroundColor,
    this.size = 40,
    this.padding = 8,
    this.borderRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.h,
      width: size.w,
      padding: EdgeInsets.all(padding.r),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: icon,
    );
  }
}
