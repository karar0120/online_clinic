import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/features/register/ui/widget/build_form_field.dart';
import 'package:online_clinic/features/register/ui/widget/build_register_button.dart';
import 'package:online_clinic/features/register/ui/widget/build_sign_in_text.dart';
import 'package:online_clinic/features/register/ui/widget/build_sign_with_google_apple.dart';
import 'package:online_clinic/features/register/ui/widget/build_text_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              const BuildTextRegister(),
              SizedBox(
                height: 30.h,
              ),
              BuildFormFieldEmailAndPassword(),
              SizedBox(
                height: 30.h,
              ),
              const RegisterButton(),
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
