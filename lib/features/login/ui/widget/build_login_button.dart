import 'package:flutter/material.dart';
import 'package:online_clinic/core/theming/styles.dart';
import 'package:online_clinic/core/widget/app_text_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      textStyle: TextStyles.font16WhiteSemiBold,
      onPressed: () {},
      buttonText: "Login",
    );
  }
}
