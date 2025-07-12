import 'package:angelgrullxm_social_network_app/src/core/constant/icons.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/widgets/app_screen_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../side_bar/presentation/side_bar_screen.dart';
import '../widgets/app_button.dart';
import '../widgets/icon_box.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScreenBackground(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 15, top: 54),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppIcons.applicationIcon,
                    width: 40.w,
                    height: 40.h,
                  ),
                  Image.asset(AppIcons.profileIcon, width: 40.w, height: 40.h),
                  SvgPicture.asset(
                    AppIcons.settingIcon,
                    width: 40.w,
                    height: 40.h,
                  ),
                ],
              ),
              SizedBox(height: 81.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.appLogoIcon,
                    height: 104.h,
                    width: 103.w,
                  ),
                  SizedBox(width: 15.w),
                  SvgPicture.asset(
                    AppIcons.inzilly,
                    height: 68.h,
                    width: 180.w,
                  ),
                ],
              ),
              Spacer(),
              SvgButton(
                svgAsset: AppIcons.primaryButtonSvg,
                text: 'QUICK GAME',
                width: 229,
                height: 58,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SideBarScreen()));
                },
              ),

              SizedBox(height: 16.h),
              SvgButton(
                svgAsset: AppIcons.primaryButtonSvg,
                text: 'GRID STYLE',
                width: 229,
                height: 58,
                onTap: () {},
              ),
              SizedBox(height: 40.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconBox(
                    icon: SvgPicture.asset(AppIcons.logoutIcon),
                    backgroundColor: const Color(0xffBA1A1A),
                  ),
                  SizedBox(width: 102.w),
                  IconBox(
                    icon: SvgPicture.asset(AppIcons.volumeIcon),
                    backgroundColor: const Color(0xff006E2C),
                  ),

                  SizedBox(width: 8.w),
                  IconBox(
                    icon: SvgPicture.asset(AppIcons.fullScreenIcon),
                    backgroundColor: const Color(0xff006E2C),
                  ),
                  SizedBox(height: 80.h),
                ],
              ),
              SizedBox(height: 80.h),
            ],
          ),
        ),
      ),
    );
  }
}
