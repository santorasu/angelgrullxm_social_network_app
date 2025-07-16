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
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffE0E0FF),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8.r)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
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
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
    );
  }
}
