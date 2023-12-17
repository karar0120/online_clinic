import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/helper/extensions.dart';
import 'package:online_clinic/core/helper/spacing.dart';
import 'package:online_clinic/core/routing/routes.dart';

import '../../../../core/theming/styles.dart';

class BuildSignUpButton extends StatelessWidget {
  const BuildSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
              style: const TextStyle(
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: "By logging, you agree to our",
                  style: TextStyles.font13GrayRegular.copyWith(fontSize: 11.sp),
                ),
                TextSpan(
                  text: " Terms & Conditions",
                  style: TextStyles.font13DarkBlueMedium,
                ),
                TextSpan(
                  text: " and ",
                  style: TextStyles.font13GrayRegular.copyWith(fontSize: 11.sp),
                ),
                WidgetSpan(
                    child: Center(
                  child: Text(
                    "PrivacyPolicy.",
                    style: TextStyles.font13DarkBlueMedium,
                    textAlign: TextAlign.center,
                  ),
                )),
              ]),
        ),
        verticalSpace(25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have account? ",
              textAlign: TextAlign.center,
              style: TextStyles.font13GrayRegular
                  .copyWith(color: Colors.black, fontSize: 11.sp),
            ),
            TextButton(
              onPressed: () {
                context.pushNamed(Routes.registerScreen);
              },
              child: const Text("Sign Up "),
            )
          ],
        )
      ],
    );
  }
}
