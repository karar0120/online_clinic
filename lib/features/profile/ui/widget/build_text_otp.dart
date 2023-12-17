import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class BuildOtpText extends StatelessWidget {
  const BuildOtpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
        ),
        Text(
          "OTP Verification",
          style: TextStyles.font24BlackBold.copyWith(
            color: ColorsManager.mainBlue,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Add a PIN number to make your account more secure and easy to sign in.",
          style: TextStyles.font13GrayRegular.copyWith(
            fontSize: 14.sp,
            height: 1.5,
          ),
        )
      ],
    );
  }
}
