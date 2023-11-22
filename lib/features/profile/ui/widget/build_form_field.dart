import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:online_clinic/core/widget/form_field.dart';

import '../../../../core/theming/color.dart';

class BuildFormFieldEmailAndPasswordAndPhoneAndBirthday
    extends StatelessWidget {
  final TextEditingController fullNameTextEditingController =
      TextEditingController();
  final TextEditingController birthdayTextEditingController =
      TextEditingController();
  final TextEditingController emailTextEditingController =
      TextEditingController();

  final FocusNode fullNameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode birthdayFocusNode = FocusNode();

  BuildFormFieldEmailAndPasswordAndPhoneAndBirthday({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          DefaultFormField(
              labelText: "Full Name",
              controller: fullNameTextEditingController,
              type: TextInputType.name,
              onSubmit: () {},
              onChange: () {},
              focusNode: fullNameFocusNode,
              onTap: () {},
              validate: () {},
              prefixPressed: () {},
              suffixPressed: () {}),
          SizedBox(
            height: 20.h,
          ),
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
              labelText: "Birthday",
              controller: birthdayTextEditingController,
              type: TextInputType.datetime,
              onSubmit: () {},
              onChange: () {},
              focusNode: birthdayFocusNode,
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
