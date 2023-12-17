import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/theming/color.dart';

import '../../../../core/theming/styles.dart';

class BuildTextRegister extends StatelessWidget {
  const BuildTextRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
        ),
        Text(
          "Create Account",
          style: TextStyles.font24BlackBold.copyWith(
            color: ColorsManager.mainBlue,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
          style: TextStyles.font13GrayRegular.copyWith(
            fontSize: 14.sp,
            height: 1.5,
          ),
        )
      ],
    );
  }
}
