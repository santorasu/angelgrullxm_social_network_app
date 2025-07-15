import 'package:angelgrullxm_social_network_app/src/feature/common_widgets/custom_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:angelgrullxm_social_network_app/src/core/constant/icons.dart';
import 'package:angelgrullxm_social_network_app/src/core/constant/image.dart';

import '../../create_room/presentation/create_room_screen.dart';

void onPaymentButton(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: SingleChildScrollView(
          child: Container(
            height: 438.h,
            width: 361.w,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff2E1126), width: 2),
              gradient: LinearGradient(
                colors: [
                  Color(0xffF2E792),
                  Color(0xffF8B133),
                  Color(0xffDE712B),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.h, right: 4.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ClipOval(
                        child: SvgPicture.asset(
                          AppIcons.cancelSvg,
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                Image.asset(AppImages.giftBoxPng, width: 197.w, height: 175.h),
                SizedBox(height: 20.h),
                Text(
                  'Purchased Successful',
                  style: GoogleFonts.robotoFlex(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 54.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                  child: CustomButton(
                    text: 'Add Players',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateRoomScreen()));
                    },
                    textSize: 16.sp,
                    textColor: Colors.white,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1D5128),
                        Color(0xff14BA37),
                        Color(0xff1D5128),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderColor: Color(0xff1D5128),
                    borderRadius: 8,
                    height: 58.h,
                    width: 304.w,
                  ),
                ),
                SizedBox(height: 42.h),
              ],
            ),
          ),
        ),
      );
    },
  );
}
