import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateRoomInputBox extends StatelessWidget {
  const CreateRoomInputBox({
    super.key,
    required this.hintText,
    this.suffixIcon,
  });

  final String hintText;
  final String? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341.w,
      decoration: BoxDecoration(
        color: Color(0xffE0E0FF),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            suffixIcon: suffixIcon != null
                ? SvgPicture.asset(
              suffixIcon!,
              width: 24.w,
              height: 24.h,
            )
                : null,
            hintStyle: GoogleFonts.robotoFlex(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff6B71B9),
            ),
          ),
        ),
      ),
    );
  }
}
