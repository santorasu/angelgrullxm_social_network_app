import 'package:angelgrullxm_social_network_app/src/core/constant/image.dart';
import 'package:flutter/material.dart';

class AppScreenBackground extends StatelessWidget {
  const AppScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Image.asset(
            AppImages.appBackground,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(child: child),
      ],
    );
  }
}
