import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:online_clinic/core/widget/form_field.dart';

import '../../../../core/theming/color.dart';

class BuildFormFieldEmailAndPassword extends StatelessWidget {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();

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
          IntlPhoneField(
            disableLengthCheck: true,
            focusNode: phoneFocusNode,
            decoration: InputDecoration(
              labelText: 'Your number',
              labelStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
              border: const OutlineInputBorder(
                borderSide: BorderSide(),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0.r),
                borderSide: const BorderSide(
                  //color: Colors.red,
                  color: ColorsManager.gray,
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0.r),
                borderSide: const BorderSide(
                  color: ColorsManager.gray,
                  width: 0.5,
                ),
              ),
            ),
            languageCode: "en",
            onChanged: (phone) {},
            onCountryChanged: (country) {},
          ),
        ],
      ),
    );
  }
}
