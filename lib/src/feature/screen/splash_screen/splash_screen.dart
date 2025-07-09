import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:angelgrullxm_social_network_app/src/core/constant/image.dart';
import '../../common_widgets/custom_bottom.dart';
import '../auth/phone_number/presentation/phone_number_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(width: 311.w, height: 306.h, AppImages.groupPng),
          ),
          SizedBox(height: 18.h),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "Let’s meeting new\npeople around you",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),

          SizedBox(height: 40.h),

          CustomButton(
            text: 'Create an account',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumberScreen()));
            },
            textColor: Colors.white,
            textSize: 16,
          ),

          SizedBox(height: 12.h),

          CustomButton(
            text: 'Sign in',
            onTap: () {},
            color: Color(0xffFFA0BD).withOpacity(0.1),
            textColor: Color(0xff4F0225),
            textSize: 16,
          ),

          SizedBox(height: 20.h),

          GestureDetector(
            onTap: () {
            },
            child: Text(
              'Trouble signing in?',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color(0xffFC654B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
