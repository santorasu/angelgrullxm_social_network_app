import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInputLabel extends StatelessWidget {
  const TextInputLabel({super.key, required this.label, this.optional = ''});

  final String label;
  final String optional;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.robotoFlex(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xffE0E0FF),
          ),
        ),
        Text(
          optional!,
          style: GoogleFonts.robotoFlex(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff858BD5),
          ),
        ),
      ],
    );
  }
}
