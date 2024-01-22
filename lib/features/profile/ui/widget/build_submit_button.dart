import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/helper/extensions.dart';
import 'package:online_clinic/core/theming/styles.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/color.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
            const Size(double.infinity, 52),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
        ),
        onPressed: () {
          context.pushNamed(Routes.otpScreen);
        },
        child: Text(
          "Submit",
          style: TextStyles.font16WhiteSemiBold,
        ));
  }
}
