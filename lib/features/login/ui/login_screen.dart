import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/helper/spacing.dart';
import 'package:online_clinic/features/login/ui/widget/build_form_field.dart';
import 'package:online_clinic/features/login/ui/widget/build_login_button.dart';
import 'package:online_clinic/features/login/ui/widget/build_text_login.dart';

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
              verticalSpace(36),
              const BuildFormFieldEmailAndPassword(),
              verticalSpace(24),
              const LoginButton(),
              verticalSpace(16),
              const BuildSignUpButton(),
            ],
          ),
        ),
      )),
    );
  }
}
