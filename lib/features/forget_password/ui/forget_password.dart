import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/features/forget_password/ui/widget/build_forget_password_button.dart';
import 'package:online_clinic/features/forget_password/ui/widget/build_form_field.dart';
import 'package:online_clinic/features/forget_password/ui/widget/build_text_forget_password.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const BuildTextForgetPassword(),
              SizedBox(
                height: 40.h,
              ),
              BuildFormFieldEmailOrPassword(),
              SizedBox(
                height: 350.h,
              ),
              const ResetPasswordButton(),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
