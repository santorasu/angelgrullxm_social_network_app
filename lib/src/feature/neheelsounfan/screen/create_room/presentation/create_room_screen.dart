import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:angelgrullxm_social_network_app/src/core/constant/icons.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/widgets/app_screen_background.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/create_room_input_box.dart';
import '../widgets/text_input_label.dart';

class CreateRoomScreen extends StatelessWidget {
  const CreateRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScreenBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      AppIcons.backSvg,
                      width: 40.w,
                      height: 40.h,
                    ),
                  ),
                  Image.asset(AppIcons.profileIcon, width: 40.w, height: 40.h),
                  SvgPicture.asset(
                    AppIcons.threeDotSvg,
                    width: 40.w,
                    height: 40.h,
                  ),
                ],
              ),
              SizedBox(height: 28.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Unlock All Features',
                  style: GoogleFonts.robotoFlex(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                height: 418.h,
                padding: EdgeInsets.all(12.r),
                decoration: BoxDecoration(
                  color: Color(0xff3D4279),
                  border: Border.all(color: Color(0xffE0E0FF)),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: SingleChildScrollView(
                  // Keep SingleChildScrollView here
                  child: Column(
                    // Removed Expanded here
                    children: [
                      Container(
                        width: 287.w,
                        padding: EdgeInsets.all(12.r),
                        decoration: BoxDecoration(
                          color: Color(0xff555A92),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Standard Game',
                              style: GoogleFonts.robotoFlex(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffE0E0FF),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '3 Game, Maximum 4 Player in a Room',
                              style: GoogleFonts.robotoFlex(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffE0E0FF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.h),
                      TextInputLabel(
                        label: 'Enter Room Name',
                        optional: ' (Optional)',
                      ),
                      SizedBox(height: 4.h),
                      CreateRoomInputBox(hintText: 'Type your room name here'),
                      SizedBox(height: 8.h),
                      TextInputLabel(label: 'Time'),
                      SizedBox(height: 4.h),
                      CreateRoomInputBox(
                        hintText: 'Select time',
                        suffixIcon: AppIcons.dropDownSvg,
                      ),
                      SizedBox(height: 28.h),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 229.w,
                          height: 58.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xff004619),
                                width: 2.w,
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: SvgPicture.asset(
                                  AppIcons.primaryButtonSvg,
                                  fit: BoxFit
                                      .fill,
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Create Room',
                                  style: GoogleFonts.robotoFlex(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
