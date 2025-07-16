import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/payment_screen/presentation/payment_screen.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/widgets/app_bar_icons.dart';
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
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              AppBarIcons(),
              SizedBox(height: 40.h),
              Center(child: ChooseSubscriptionScreen()),
              SizedBox(height: 40.h),
              Column(
                children: [
                  PaymentCardWidget(
                    title: 'Games',
                    subtitle: ": 6 games",
                    title2: 'Max Players',
                    subtitle2: ': Up to 8 Players',
                    description:
                        'Get your game on with 3 quick rounds of fun with your friends!',
                    borderColor: Color(0xff3D4279),
                    rocketBackground: Color(0xffE0E0FF),
                    buttonText: '\$5 per 3 game',
                    quality: 'Basic',
                    color: Color(0xffE0E0FF),
                  ),

                  SizedBox(height: 12.h),

                  PaymentCardWidget(
                    title: 'Games',
                    subtitle: ": 6 games",
                    title2: 'Max Players',
                    subtitle2: ': Up to 8 Players',
                    description:
                        'Get your game on with 3 quick rounds of fun with your friends!',
                    borderColor: Color(0xff1D5128),
                    rocketBackground: Color(0xffB8F1B9),
                    buttonText: '\$10 per 3 game',
                    quality: 'Standard',
                    color: Color(0xffB8F1B9),
                  ),
                  SizedBox(height: 12.h),

                  PaymentCardWidget(
                    title: 'Games',
                    subtitle: ": 6 games",
                    title2: 'Max Players',
                    subtitle2: ': Up to 8 Players',
                    description:
                        'Get your game on with 3 quick rounds of fun with your friends!',
                    borderColor: Color(0xff2E1126),
                    rocketBackground: Color(0xffFFD8EE),
                    buttonText: '\$15 per 3 game',
                    quality: 'Premium',
                    color: Color(0xffFFD8EE),
                  ),
                ],
              ),
              SizedBox(height: 19.h),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 66.w,
                    vertical: 16.h,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 64.w,
                    vertical: 16.h,
                  ),
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
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.white),
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
