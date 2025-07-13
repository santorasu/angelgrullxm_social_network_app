import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/constant/icons.dart';
import '../../start_screen/widgets/app_screen_background.dart';
import '../../start_screen/widgets/icon_box.dart';
import '../widgets/build_side_bar_tile.dart';
import '../widgets/term_text.dart';

final languageProvider = StateProvider<String>((ref) => 'US English');

class SideBarScreen extends ConsumerWidget {
  SideBarScreen({super.key});

  final List<String> languages = [
    'US English',
    'UK English',
    'Bangla',
    'Hindi',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage = ref.watch(languageProvider);

    return Scaffold(
      body: AppScreenBackground(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      AppIcons.cancelSvg,
                      width: 40.w,
                      height: 40.h,
                    ),
                  ),
                  SizedBox(width: 100.w),
                  Container(
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0FF),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedLanguage,
                        icon: SvgPicture.asset(AppIcons.dropDownSvg),
                        dropdownColor: Color(0xffE0E0FF),
                        borderRadius: BorderRadius.circular(8.r),
                        style: TextStyle(color: Colors.black, fontSize: 16.sp),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            ref.read(languageProvider.notifier).state =
                                newValue;
                          }
                        },
                        items: languages.map<DropdownMenuItem<String>>((
                          String value,
                        ) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                SvgPicture.asset(AppIcons.languageIconSvg),
                                SizedBox(width: 8.w),
                                Text(value),
                              ],
                            ),
                          );
                        }).toList(),
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
                onTap: () {},
              ),
              SizedBox(height: 13.h),
              buildSettingsTile(
                title: 'Settings',
                leadingIconPath: AppIcons.settingIconSvg,
                trailingIconPath: AppIcons.forwardSvg,
                onTap: () {},
              ),
              SizedBox(height: 13.h),
              buildSettingsTile(
                title: 'Leaderboard',
                leadingIconPath: AppIcons.personSvg,
                trailingIconPath: AppIcons.forwardSvg,
                onTap: () {},
              ),
              SizedBox(height: 13.h),
              buildSettingsTile(
                title: 'How to play',
                leadingIconPath: AppIcons.questionSvg,
                trailingIconPath: AppIcons.forwardSvg,
                onTap: () {},
              ),
              SizedBox(height: 13.h),
              buildSettingsTile(
                title: 'How to play video',
                leadingIconPath: AppIcons.videoSvg,
                trailingIconPath: AppIcons.forwardSvg,
                onTap: () {},
              ),
              SizedBox(height: 40.h),
              Center(
                child: Container(
                  width: 229.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFF80715), Color(0xFFA80710)],
                    ),
                    border: Border(
                      bottom: BorderSide(color: Color(0xffFF5449), width: 3),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.h,
                      horizontal: 40.w,
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
                  TermsText(text: 'Question & Answers'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
