import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/widget/app_text_form_field.dart';

class BuildFormFieldEmailOrPassword extends StatelessWidget {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();

  BuildFormFieldEmailOrPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Email or Phone Number",
            controller: emailTextEditingController,
            validator: (String? c) {},
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
