import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/theming/color.dart';

import '../../../../core/theming/styles.dart';

class BuildTextForgetPassword extends StatelessWidget {
  const BuildTextForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
        ),
        Text(
          "Forgot Password",
          style: TextStyles.font24BlackBold.copyWith(
            color: ColorsManager.mainBlue,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "At our app, we take the security of your information seriously.",
          style: TextStyles.font13GrayRegular.copyWith(
            fontSize: 14.sp,
            height: 1.5,
          ),
        )
      ],
    );
  }
}
