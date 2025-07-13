import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/constant/icons.dart';
import '../../start_screen/widgets/app_screen_background.dart';
import '../../start_screen/widgets/icon_box.dart';
import '../riverpod/chceking.dart';
import '../riverpod/side_bar_notifier.dart';
import '../widgets/build_side_bar_tile.dart';
import '../widgets/custom_menu.dart';
import '../widgets/term_text.dart';

final languageProvider = StateProvider<String>((ref) => 'US English');

class SideBarScreen extends ConsumerWidget {
  SideBarScreen({super.key});

  final _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  Consumer(
                    builder: (_, ref, _) {
                      final droptext = ref.watch(result) ?? "US English";
                      return GestureDetector(
                        key: _menuKey,
                        onTap: () async {
                          final value = await customPopupMenu(
                            context: context,
                            key: _menuKey,
                            list: {"US ENGLISH", "عربي"},
                            height: 150.h,
                          );
                          ref.read(result.notifier).state = value;
                        },
                        child: Container(
                          height: 36.h,
                          width: 148.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.r),
                            ),
                            color: Color(0xFFE0E0FF),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(AppIcons.languageIconSvg),
                              Text(droptext),
                              SvgPicture.asset(AppIcons.dropDownSvg),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 28.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer(
                    builder: (_, ref, _) {
                      final isVisible = ref.watch(sideBarProvider).isVisible;
                      return GestureDetector(
                        onTap: () {
                          ref.read(sideBarProvider.notifier).onVisibleLine();
                        },
                        child: Stack(
                          children: [
                            IconBox(
                              icon: SvgPicture.asset(
                                AppIcons.musicSvg,
                                height: 28.h,
                                width: 28.w,
                              ),
                              backgroundColor: Color(
                                0xff858BD5,
                              ).withValues(alpha: 0.5),
                            ),
                            if (isVisible)
                              Positioned(
                                child: SvgPicture.asset(AppIcons.lineSvg),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 16.w),
                  Consumer(
                    builder: (_, ref, _) {
                      final isVisible = ref.watch(sideBarProvider).isVisibleVolume;
                      return GestureDetector(
                        onTap: () {
                          ref.read(sideBarProvider.notifier).onVisibleVolume();
                        },
                        child: Stack(
                          children: [
                            IconBox(
                              icon: SvgPicture.asset(
                                AppIcons.volumeIcon,
                                height: 28.h,
                                width: 28.w,
                              ),
                              backgroundColor: Color(0xff006E2C),
                            ),
                            if (isVisible)
                              Positioned(
                                child: SvgPicture.asset(AppIcons.lineSvg),
                              ),
                          ],
                        ),
                      );
                    },
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
