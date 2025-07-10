import 'package:angelgrullxm_social_network_app/src/core/theme/parts/app_text_theme.dart';
import 'package:angelgrullxm_social_network_app/src/core/theme/parts/button_theme.dart';
import 'package:angelgrullxm_social_network_app/src/core/theme/parts/custom_app_bar_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData get appTheme => ThemeData(
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: AppElevatedButtonTheme.theme,
    textTheme: AppTextTheme.customTextTheme,
    appBarTheme: AppBarThemeConfig.appBarTheme,
  );
}
