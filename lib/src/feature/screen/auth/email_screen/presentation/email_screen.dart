import 'package:angelgrullxm_social_network_app/src/core/constant/app_padding.dart';
import 'package:angelgrullxm_social_network_app/src/feature/common_widgets/custom_bottom.dart';
import 'package:angelgrullxm_social_network_app/src/feature/screen/auth/apple_account/presentation/apple_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: AppPadding.allPagePadding(), // Reusable padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 121.h,),
            Text('Your email', style: textTheme.titleLarge),
            SizedBox(height: 16.h),
            Text(
              'Don’t lose access to your account, verify your email.',
              style: textTheme.titleSmall,
            ),
            SizedBox(height: 24.h),
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff626262)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff626262)),
                  ),
                  hintText: 'Enter Email',
                  hintStyle: textTheme.titleSmall?.copyWith(
                    color: Color(0xff6C6C6C),
                  ),
                ),
              ),
            ),

            SizedBox(height: 144.h),

            Center(child: CustomButton(text: 'Next', onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AppleAccountScreen()));
            })),
          ],
        ),
      ),
    );
  }
}
