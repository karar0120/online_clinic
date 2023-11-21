import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/widget/form_field.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class BuildFormFieldEmailAndPassword extends StatelessWidget {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  BuildFormFieldEmailAndPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          DefaultFormField(
              labelText: "Email",
              controller: emailTextEditingController,
              type: TextInputType.emailAddress,
              onSubmit: () {},
              onChange: () {},
              focusNode: emailFocusNode,
              onTap: () {},
              validate: () {},
              prefixPressed: () {},
              suffixPressed: () {}),
          SizedBox(
            height: 20.h,
          ),
          DefaultFormField(
              labelText: "Password",
              controller: passwordTextEditingController,
              type: TextInputType.visiblePassword,
              onSubmit: () {},
              onChange: () {},
              focusNode: passwordFocusNode,
              onTap: () {},
              validate: () {},
              prefixPressed: () {},
              suffixPressed: () {}),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.check_box_outline_blank,
                color: ColorsManager.gray,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Remember me",
                style: TextStyles.font13GrayRegular.copyWith(fontSize: 12.sp),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyles.font13GrayRegular.copyWith(
                    color: ColorsManager.mainBlue,
                    fontSize: 12.sp,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
