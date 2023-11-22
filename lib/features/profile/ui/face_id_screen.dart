import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_clinic/features/profile/ui/widget/build_subimt_face_id.dart';
import 'package:online_clinic/features/profile/ui/widget/build_text_face_id.dart';

class FaceIdScreen extends StatelessWidget {
  const FaceIdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BuildFaceIdText(),
            SizedBox(
              height: 80.h,
            ),
            ClipRRect(
              child: SvgPicture.asset("assets/svgs/face_id.svg"),
            ),
            SizedBox(
              height: 30.h,
            ),
            const Spacer(),
            const BuildSubmitFaceId(),
          ],
        ),
      ),
    ));
  }
}
