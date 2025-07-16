import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:angelgrullxm_social_network_app/src/core/constant/icons.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/widgets/app_screen_background.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/constant/image.dart';
import '../../../../common_widgets/custom_bottom.dart';
import '../../widgets/app_bar_icons.dart';
import '../widgets/card_title.dart';
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
              AppBarIcons(),
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
                ],
              ),
              SizedBox(height: 20.h),
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

              Spacer(),
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
