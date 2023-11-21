import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontFamily: "Inter");

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.mainBlue,
      fontFamily: "Inter");

  static TextStyle font13GrayRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.normal,
      color: ColorsManager.gray,
      fontFamily: "Inter");

  static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: "Inter");
}
