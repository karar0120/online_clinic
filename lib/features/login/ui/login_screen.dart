import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/theming/color.dart';
import 'package:online_clinic/features/login/ui/widget/build_form_field.dart';
import 'package:online_clinic/features/login/ui/widget/build_login_button.dart';
import 'package:online_clinic/features/login/ui/widget/build_sign_with_google_apple.dart';
import 'package:online_clinic/features/login/ui/widget/build_text_login.dart';

import '../../../core/theming/styles.dart';
import 'widget/build_sign_up_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const BuildTextLogin(),
              SizedBox(
                height: 30.h,
              ),
              BuildFormFieldEmailAndPassword(),
              SizedBox(
                height: 30.h,
              ),
              const LoginButton(),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  const Expanded(
                      child: Divider(
                    color: ColorsManager.dividerColor,
                    thickness: 1,
                  )),
                  Text(
                    "  Or sign in with  ",
                    style:
                        TextStyles.font13GrayRegular.copyWith(fontSize: 12.sp),
                  ),
                  const Expanded(
                      child: Divider(
                    color: ColorsManager.dividerColor,
                    thickness: 1,
                  )),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              const BuildSignWithGoogleAndApple(),
              SizedBox(
                height: 20.h,
              ),
              const BuildSignUpButton(),
            ],
          ),
        ),
      )),
    );
  }
}
