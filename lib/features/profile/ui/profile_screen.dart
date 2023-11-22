import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/features/profile/ui/widget/build_form_field.dart';
import 'package:online_clinic/features/profile/ui/widget/build_profile_photo.dart';
import 'package:online_clinic/features/profile/ui/widget/build_submit_button.dart';
import 'package:online_clinic/features/profile/ui/widget/build_text_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              const BuildTextProfile(),
              SizedBox(
                height: 30.h,
              ),
              const BuildProfilePhoto(),
              SizedBox(
                height: 30.h,
              ),
              BuildFormFieldEmailAndPasswordAndPhoneAndBirthday(),
              SizedBox(
                height: 30.h,
              ),
              const SubmitButton(),
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
