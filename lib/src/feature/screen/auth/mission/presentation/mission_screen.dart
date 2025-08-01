import 'package:angelgrullxm_social_network_app/src/feature/screen/auth/personal_background/presentation/personal_backgroud_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/app_padding.dart';
import '../../../../common_widgets/custom_bottom.dart';
import '../widgets/custom_app_bar_screen.dart';

class MissionScreen extends StatelessWidget {
  const MissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: AppPadding.allPagePadding(),
      child: Scaffold(
        appBar: CustomAppBar(
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text('Skip', style: TextStyle(color: Color(0xffEA1468))),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 94.h),
            Text("Galactic mission", style: textTheme.titleLarge),
            SizedBox(height: 20.h),
            Form(
              child: Container(
                height: 170.h,
                width: 353.w,
                color: Color(0xffFFA0BD).withOpacity(0.1),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    hintText: 'Text about your mission',
                    hintStyle: textTheme.titleSmall?.copyWith(
                      color: Color(0xff6C6C6C),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 51.h),
            Center(
              child: CustomButton(
                text: 'Next',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonalBackgroundScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
