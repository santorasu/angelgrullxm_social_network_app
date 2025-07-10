import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/widgets/app_screen_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constant/icons.dart';
import '../start_screen/widgets/app_button.dart';
import '../start_screen/widgets/icon_box.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScreenBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgButton(
                      svgAsset: AppIcons.iconBackground,
                      icon: SvgPicture.asset(
                        AppIcons.cancelSvg,
                        height: 24.h,
                        width: 24.w,
                      ),
                      width: 40.w,
                      height: 40.h,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 100.w),
                    Container(
                     // width: 148.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E0FF),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(4.r),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.languageIconSvg),
                            SizedBox(width: 8.w),
                            Text('US English'),
                            SizedBox(width: 16.w),
                            SvgPicture.asset(AppIcons.dropDownSvg),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBox(
                      icon: SvgPicture.asset(AppIcons.musicSvg,height: 28.h,width: 28.w,),
                      backgroundColor:  Color(0xff858BD5).withValues(alpha: 0.5),
                    ),
                    SizedBox(width: 16.w),
                    IconBox(
                      icon: SvgPicture.asset(AppIcons.volumeIcon,height: 28.h,width: 28.w,),
                      backgroundColor:  Color(0xff006E2C),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                Container(
                  color: Color(0xffE0E0FF),
                  child: ListTile(
                    leading: SvgPicture.asset(AppIcons.settingsMan),
                    title: Text('My Account'),
                    trailing: SvgPicture.asset(AppIcons.forwardSvg),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
