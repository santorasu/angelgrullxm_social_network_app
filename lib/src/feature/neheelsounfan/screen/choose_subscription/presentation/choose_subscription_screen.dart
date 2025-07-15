import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/payment_screen/presentation/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:angelgrullxm_social_network_app/src/core/constant/icons.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/widgets/app_screen_background.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../payment_screen/widgets/subscription_card.dart';
import '../widgets/pay_to_play.dart';

class ChoosePaymentCard extends StatelessWidget {
  const ChoosePaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScreenBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
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
              SizedBox(height: 14.h),
              ChooseSubscriptionScreen(),
              SizedBox(height: 12.h),
              Column(
                children: [
                  PaymentCardWidget(
                    color: Color(0xffE0E0FF),
                    quality: 'Basic',
                    title: 'Games',
                    subtitle: 'Max Players',
                    description: 'Get your game on with 3 quick rounds of fun with your friends!',
                    buttonText: '\$10 per 3 game',
                    onTap: () {
                      // Handle the on tap logic here
                    },
                  ),

                  SizedBox(height: 12.h),

                  PaymentCardWidget(
                    color: Color(0xffB8F1B9),
                    quality: 'Standard',
                    title: 'Games',
                    subtitle: 'Max Players',
                    description: 'Get your game on with 3 quick rounds of fun with your friends!',
                    buttonText: '\$10 per 3 game',
                    onTap: () {
                      // Handle the on tap logic here
                    },
                  ),
                  SizedBox(height: 12.h),

                  PaymentCardWidget(
                    color: Color(0xffFFD8EE),
                    quality: 'Premium',
                    title: 'Games',
                    subtitle: 'Max Players',
                    description: 'Get your game on with 3 quick rounds of fun with your friends!',
                    buttonText: '\$15 per 3 game',
                    onTap: () {
                      // Handle the on tap logic here
                    },
                  ),


                ],
              ),
              Spacer(),
              // Grid Style Button
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentScreen()));
                },
                child: Container(
                  width: 229.w,
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
                      'Next',
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
