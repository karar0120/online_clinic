import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/theming/color.dart';

import '../../../../core/theming/styles.dart';

class BuildTextProfile extends StatelessWidget {
  const BuildTextProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
        ),
        Text(
          "Fill Your Profile",
          style: TextStyles.font24BlackBold.copyWith(
            color: ColorsManager.mainBlue,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Please take a few minutes to fill out your profile with as much detail as possible.",
          style: TextStyles.font13GrayRegular.copyWith(
            fontSize: 14.sp,
            height: 1.5,
          ),
        )
      ],
    );
  }
}
