import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/widget/form_field.dart';

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
          DefaultFormField(
              labelText: "Email or Phone Number",
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
        ],
      ),
    );
  }
}
