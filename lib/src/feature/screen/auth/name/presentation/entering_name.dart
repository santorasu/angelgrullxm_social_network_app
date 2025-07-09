import 'package:angelgrullxm_social_network_app/src/core/constant/app_padding.dart';
import 'package:angelgrullxm_social_network_app/src/feature/common_widgets/custom_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnteringName extends StatelessWidget {
  const EnteringName({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: AppPadding.allPagePadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 121.h),
            Text("What's Your Name", style: textTheme.titleLarge),
            SizedBox(height: 20.h),
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff626262)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff626262)),
                  ),
                  hintText: 'Enter your name',
                  hintStyle: textTheme.titleSmall?.copyWith(
                    color: Color(0xff6C6C6C),
                  ),
                ),
              ),
            ),
            SizedBox(height: 26.h),
            Text(
              'This is how it’ll appear on your profile',
              style: textTheme.titleSmall,
            ),
            Text(
              'Can’t change it letter',
              style: textTheme.titleSmall?.copyWith(color: Color(0xffFC654B)),
            ),

            SizedBox(height: 77.h),

            Center(
              child: CustomButton(text: 'Next', onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
