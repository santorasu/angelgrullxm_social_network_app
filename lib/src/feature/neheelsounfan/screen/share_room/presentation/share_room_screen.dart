import 'package:angelgrullxm_social_network_app/src/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:angelgrullxm_social_network_app/src/core/constant/icons.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/widgets/app_bar_icons.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/widgets/enjoy_free_game.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/widgets/app_screen_background.dart';
import '../../create_room/widgets/create_room_input_box.dart';
import '../../create_room/widgets/text_input_label.dart';

class ShareRoomScreen extends StatelessWidget {
  const ShareRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScreenBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
          child: Column(
            children: [
              AppBarIcons(),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Share Room',
                  style: GoogleFonts.robotoFlex(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(12.r),
                decoration: BoxDecoration(
                  color: Color(0xff3D4279),
                  border: Border.all(color: Color(0xffE0E0FF)),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Column(
                  children: [
                    EnjoyFreeGame(),
                    SizedBox(height: 24.h),
                    TextInputLabel(
                      label: 'Room Link',
                      start: MainAxisAlignment.center,
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Expanded(
                          child: CreateRoomInputBox(
                            hintText: 'www.game.com]',
                            suffixIcon: AppIcons.dropDownSvg,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        ShareMedia(color: Color(0xffE0E0FF), icons: AppIcons.shareIconSvg,),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    TextInputLabel(
                      label: 'Time',
                      start: MainAxisAlignment.center,
                    ),
                    SizedBox(height: 4.h),
                    Container(
                      width: 311.w,
                      padding: EdgeInsets.all(12.r),
                      decoration: BoxDecoration(
                        color: Color(0xff555A92),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(AppImages.qrCodeSvg),
                          SizedBox(height: 12.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ShareMedia(color: Color(0xff555A92), icons: AppIcons.downloadSvg,),
                                  SizedBox(width: 4.w,),
                                  ShareMedia(color: Color(0xff555A92), icons: AppIcons.copy,),
                                  SizedBox(width: 4.w,),
                                  ShareMedia(color: Color(0xffE0E0FF), icons: AppIcons.shareIconSvg,),
                                ],
                              ),

                            ),
                          )

                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 229.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffF2E792),
                              Color(0xffF8B133),
                              Color(0xffDE712B),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: SvgPicture.asset(
                                AppIcons.primaryButtonSvg,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Center(
                              child: Text(
                                'Next',
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
            ],
          ),
        ),
      ),
    );
  }
}

class ShareMedia extends StatelessWidget {
  const ShareMedia({
    super.key, required this.color, required this.icons,
  });
  
  final Color color;
  final String icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: color,
     border: Border.all(color: Colors.white,width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SvgPicture.asset(
         icons,
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }
}
