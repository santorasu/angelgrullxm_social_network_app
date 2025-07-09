import 'package:angelgrullxm_social_network_app/src/core/constant/app_padding.dart';
import 'package:angelgrullxm_social_network_app/src/feature/common_widgets/custom_bottom.dart';
import 'package:angelgrullxm_social_network_app/src/feature/screen/auth/name/presentation/entering_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppleAccountScreen extends StatelessWidget {
  const AppleAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: AppPadding.allPagePadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 261.h),
            Text('Connect your Account', style: textTheme.titleLarge),
            SizedBox(height: 16.h),
            Text(
              'Sign in with ease by linking your Apple ID to straseed.',
              style: textTheme.titleSmall,
            ),
            SizedBox(height: 24.h),
            Center(
              child: CustomButton(
                text: 'Continue with Apple',
                onTap: () {},
                width: 353,
                color: Color(0xffFFA0BD).withOpacity(0.1),
                textColor: Color(0xff4F0225),
              ),
            ),
            SizedBox(height: 56.h),
            Center(child: CustomButton(text: 'Next', onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EnteringName()));

            })),
          ],
        ),
      ),
    );
  }
}
