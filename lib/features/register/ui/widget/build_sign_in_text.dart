import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/helper/extensions.dart';

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
                  text: "By sign up, you agree to our",
                  style: TextStyles.font13GrayRegular.copyWith(fontSize: 11.sp),
                ),
                TextSpan(
                  text: " Terms & Conditions",
                  style: TextStyles.font16WhiteSemiBold
                      .copyWith(color: Colors.black, fontSize: 11.sp),
                ),
                TextSpan(
                  text: " and ",
                  style: TextStyles.font13GrayRegular.copyWith(fontSize: 11.sp),
                ),
                WidgetSpan(
                    child: Center(
                  child: Text(
                    "PrivacyPolicy.",
                    style: TextStyles.font16WhiteSemiBold
                        .copyWith(color: Colors.black, fontSize: 11.sp),
                    textAlign: TextAlign.center,
                  ),
                )),
              ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account yet? ",
              textAlign: TextAlign.center,
              style: TextStyles.font13GrayRegular
                  .copyWith(color: Colors.black, fontSize: 11.sp),
            ),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text("Sign in "),
            )
          ],
        )
      ],
    );
  }
}
