import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/helper/extensions.dart';
import 'package:online_clinic/core/helper/spacing.dart';
import 'package:online_clinic/core/widget/app_text_form_field.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/styles.dart';

class BuildFormFieldEmailAndPassword extends StatefulWidget {
  const BuildFormFieldEmailAndPassword({super.key});

  @override
  State<BuildFormFieldEmailAndPassword> createState() =>
      _BuildFormFieldEmailAndPasswordState();
}

class _BuildFormFieldEmailAndPasswordState
    extends State<BuildFormFieldEmailAndPassword> {
  final TextEditingController emailTextEditingController =
      TextEditingController();

  final TextEditingController passwordTextEditingController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  final FocusNode emailFocusNode = FocusNode();

  final FocusNode passwordFocusNode = FocusNode();

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Email",
            controller: emailTextEditingController,
            validator: (String? value) {},
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: "Password",
            controller: passwordTextEditingController,
            isObscureText: isObscureText,
            validator: (String? value) {},
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: isObscureText
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
          ),
          verticalSpace(18),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {
                context.pushNamed(Routes.forgetPasswordScreen);
              },
              child: Text(
                "Forgot Password?",
                style: TextStyles.font13BlueRegular.copyWith(
                  color: ColorsManager.mainBlue,
                  fontSize: 12.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
