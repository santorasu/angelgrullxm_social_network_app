import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:angelgrullxm_social_network_app/src/core/constant/icons.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/widgets/app_screen_background.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/show_dialog.dart';
import '../widgets/subscription_card.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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

              Column(
                children: [
                  Text(
                    'Unlock All Features',
                    style: GoogleFonts.robotoFlex(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'All 25+ categories unlocked',
                    style: GoogleFonts.robotoFlex(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffE0E0FF),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  PaymentCardWidget(
                    color: Color(0xffB8F1B9),
                    quality: 'Standard',
                    title: 'Games',
                    subtitle: 'Max Players',
                    description:
                        'Get your game on with 3 quick rounds of fun with your friends!',
                    buttonText: '\$10 per 3 game',
                    onTap: () {},
                    rocketBackground: Color(0xffB8F1B9),
                  ),

                  // Container(
                  //   height: 165.h,
                  //   padding: EdgeInsets.all(8.r),
                  //   decoration: BoxDecoration(
                  //     color: Color(0xffB8F1B9),
                  //     borderRadius: BorderRadius.circular(16.r),
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         width: 106.w,
                  //         height: 145.h,
                  //         decoration: BoxDecoration(
                  //           color: Color(0xffB8F1B9),
                  //           borderRadius: BorderRadius.circular(10.r),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Color.fromRGBO(34, 34, 34, 0.20),
                  //               spreadRadius: 10.r,
                  //               blurRadius: 10.r,
                  //               offset: Offset(0, 4),
                  //             ),
                  //           ],
                  //         ),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Container(
                  //               width: 100.w,
                  //               height: 32.h,
                  //               alignment: Alignment.center,
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(8.r),
                  //                 border: Border.all(color: Color(0xff1D5128)),
                  //               ),
                  //               child: Text(
                  //                 'Standard',
                  //                 style: GoogleFonts.robotoFlex(
                  //                   fontSize: 16.sp,
                  //                   fontWeight: FontWeight.w500,
                  //                   color: Color(0xff2E1126),
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(height: 5.h),
                  //             Image.asset(
                  //               AppImages.rocketPng,
                  //               height: 100.h,
                  //               width: 100.w,
                  //               fit: BoxFit.cover,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       SizedBox(width: 4.w),
                  //
                  //
                  //       Expanded(
                  //         child: Column(
                  //           children: [
                  //             Row(
                  //               children: [
                  //                 CardTitle(
                  //                   title: 'Games',
                  //                   titleR: 'Max Players',
                  //                 ),
                  //                 SizedBox(width: 8.w),
                  //                 CardTitle(
                  //                   title: ': 6 games',
                  //                   titleR: ': Up to 8 players',
                  //                 ),
                  //               ],
                  //             ),
                  //             SizedBox(height: 4.h),
                  //             Text(
                  //               'Get your game on with 3 quick rounds of fun with your friends!',
                  //               style: GoogleFonts.robotoFlex(
                  //                 fontSize: 14.sp,
                  //                 fontWeight: FontWeight.w500,
                  //                 color: Color(0xff2E1126),
                  //               ),
                  //             ),
                  //             SizedBox(height: 8.h),
                  //             CustomButton(
                  //               text: '\$10 per 3 game',
                  //               onTap: () {},
                  //               height: 42.h,
                  //               width: 228.w,
                  //               gradient: LinearGradient(
                  //                 colors: [
                  //                   Color(0xffF2E792),
                  //                   Color(0xffF8B133),
                  //                   Color(0xffDE712B),
                  //                 ],
                  //                 begin: Alignment.topCenter,
                  //                 end: Alignment.bottomCenter,
                  //               ),
                  //               borderRadius: 8.r,
                  //               borderColor: Color(0xff2E1126),
                  //               textColor: Color(0xff2E1126),
                  //               textSize: 20.sp,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              Spacer(),
              // Grid Style Button
              GestureDetector(
                onTap: () {
                  onPaymentButton(context);
                },
                child: Container(
                  width: 115.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: Color(0xff008A39),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border(
                      bottom: BorderSide(color: Color(0xffB8F1B9), width: 2.w),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Pay',
                      style: GoogleFonts.robotoFlex(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
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
