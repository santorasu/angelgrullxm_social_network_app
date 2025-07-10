import 'package:flutter/material.dart';

class AppColor {
  static const Color background = Color(0xff3D4279);
  static const Color inputText = Color(0xff6B71B9);
  static const Color sliderLabel = Color(0xff3D4279);
  static const Color inputIcon = Color(0xff858BD5);
  static const Color inputBoxBackground = Color(0xffE0E0FF);
  static const Color playerInputBackground = Color(0xffB8F1B9);
  static const Color inputUnderline = Color(0xff00024C);
  static const Color termsText = Color(0xffBEC2FF);
  static const Color logoBorder = Color(0xff9FA5F2);
  static const Color logoBackground = Color(0xffE0E0FF);
  static const Color logoSubtitle = Color(0xffFFD8EE);
  static const Color primaryText = Color(0xffE0E0FF);
  static const Color secondaryButtonText = Color(0xffffffff);
  static const Color validationSuccess = Color(0xffB8F1B9);
  static const Color validationError = Color(0xffFF5449);
  static const Color white = Color(0xFFFFFFFF);
  static const Color logoutUnderline = Color(0xFFFF5449);
  static const Color logoutGradientStart = Color(0xFFA80710);
  static const Color logoutGradientEnd = Color(0xFFF80715);
  static const Color accountButton = Color(0xff2E1126);
  static const Color boxBorder = Color(0xff2E1126);
  static const Color yellowButton = Color(0xffF2E792);
  static const Color freeModeCard = Color(0xffF2E792);
  static const Color greenCard = Color(0xff1D5128);
  static const Color updateButton = Color(0xff1D5128);
  static const Color buttonHeader = Color(0xffB8F1B9);
  static const Color disabledTile = Color(0xff464C92);
  static const Color progressBar = Color(0xff10144B);
  static const Color quitBorder = Color(0xffFFB4AB);
  static const Color questionText = Color(0xff93000A);
  static const Color optionUnselected = Color(0xffFFD8EE);
  static const Color optionSelected = Color(0xffBA1A1A);
  static const Color answerIncorrect = Color(0xffFFDAD6);
  static const Color greenText = Color(0xff009940);
  static const Color greenButton = Color(0xff14BA37);
  static const Color blueButton = Color(0xff00024C);
  static const Color winningBorder = Color(0xFFB4AB1A);
  static const Color bottomGreen = Color(0xFF008A39);
  static const Color waitingBorder = Color(0xFF5F5E5E);
  static const Color waitingTile = Color(0xFFC9C6C5);

  static ColorScheme lightColorScheme = ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
    surface: surfaceColor,
    error: error,
    onPrimary: white,
    onSecondary: white,
    onSurface: primaryText,
    onError: white,
    brightness: Brightness.light,
  );

  static const Color primaryColor = Color(0xFFFFFFFF);
  static const Color secondaryColor = Color(0xFF1E78F0);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFEB3D4D);
}
