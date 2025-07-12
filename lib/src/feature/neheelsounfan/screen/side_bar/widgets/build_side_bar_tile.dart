import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget buildSettingsTile({
  required String title,
  required String leadingIconPath,
  required String trailingIconPath,
  VoidCallback? onTap,
}) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xffE0E0FF),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      leading: SvgPicture.asset(leadingIconPath, width: 24.w, height: 24.h),
      title: Text(
        title,
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
      ),
      trailing: SvgPicture.asset(trailingIconPath, width: 16.w, height: 16.h),
      onTap: onTap,
    ),
  );
}
