import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/widgets/app_screen_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/constant/icons.dart';
import '../../start_screen/widgets/app_button.dart';
import '../../start_screen/widgets/icon_box.dart';
import '../widgets/build_side_bar_tile.dart';
import '../widgets/term_text.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScreenBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
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
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E0FF),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.r),
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
                SizedBox(height: 28.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBox(
                      icon: SvgPicture.asset(
                        AppIcons.musicSvg,
                        height: 28.h,
                        width: 28.w,
                      ),
                      backgroundColor: Color(0xff858BD5).withValues(alpha: 0.5),
                    ),
                    SizedBox(width: 16.w),
                    IconBox(
                      icon: SvgPicture.asset(
                        AppIcons.volumeIcon,
                        height: 28.h,
                        width: 28.w,
                      ),
                      backgroundColor: Color(0xff006E2C),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                buildSettingsTile(
                  title: 'My Account',
                  leadingIconPath: AppIcons.settingsMan,
                  trailingIconPath: AppIcons.forwardSvg,
                  onTap: () {
                    // handle tap
                  },
                ),
                SizedBox(height: 13.h),
                buildSettingsTile(
                  title: 'Settings',
                  leadingIconPath: AppIcons.settingIconSvg,
                  trailingIconPath: AppIcons.forwardSvg,
                  onTap: () {
                    // handle tap
                  },
                ),
                SizedBox(height: 13.h),
                buildSettingsTile(
                  title: 'Leaderboard',
                  leadingIconPath: AppIcons.personSvg,
                  trailingIconPath: AppIcons.forwardSvg,
                  onTap: () {
                    // handle tap
                  },
                ),
                SizedBox(height: 13.h),
                buildSettingsTile(
                  title: 'How to play',
                  leadingIconPath: AppIcons.questionSvg,
                  trailingIconPath: AppIcons.forwardSvg,
                  onTap: () {
                    // handle tap
                  },
                ),
                SizedBox(height: 13.h),
                buildSettingsTile(
                  title: 'How to play video',
                  leadingIconPath: AppIcons.videoSvg,
                  trailingIconPath: AppIcons.forwardSvg,
                  onTap: () {
                    // handle tap
                  },
                ),
                SizedBox(height: 60.h),
                Center(
                  child: Container(
                    height: 58.h,
                    width: 229.w,
                    padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 40.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFFF80715),
                          Color(0xFFA80710),
                        ],
                      ),
                      border: Border(
                        bottom: BorderSide(
                          color: const Color(0xFFFF5449),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto Flex',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TermsText(text: 'Terms of Use'),
                    SizedBox(width: 8),
                    CircleIndicator(),
                    SizedBox(width: 8),
                    TermsText(text: 'Privacy Policy'),
                  ],
                ),
                SizedBox(height: 8),
                TermsText(text: 'Question & Answers')
              ],
            )

              ],
            ),
          ),
        ),
      ),
    );
  }
}


