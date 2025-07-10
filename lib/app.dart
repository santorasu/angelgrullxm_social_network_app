import 'package:angelgrullxm_social_network_app/src/core/theme/theme.dart';
import 'package:angelgrullxm_social_network_app/src/feature/neheelsounfan/screen/start_screen/presentaion/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AngelGrullxm extends StatelessWidget {
  const AngelGrullxm({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: StartScreen(),
          theme: AppTheme.appTheme,
        );
      },
    );
  }
}
