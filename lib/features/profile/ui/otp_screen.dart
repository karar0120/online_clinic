import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/features/profile/ui/widget/build_otp.dart';
import 'package:online_clinic/features/profile/ui/widget/build_submit_otp.dart';
import 'package:online_clinic/features/profile/ui/widget/build_text_otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BuildOtpText(),
            SizedBox(
              height: 80.h,
            ),
            const BuildOtp(),
            SizedBox(
              height: 30.h,
            ),
            const Spacer(),
            const BuildSubmitOtp(),
          ],
        ),
      ),
    ));
  }
}
