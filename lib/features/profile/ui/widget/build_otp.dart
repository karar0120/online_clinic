import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/theming/color.dart';

class BuildOtp extends StatelessWidget {
  const BuildOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      obscureText: false,
      autoFocus: true,
      keyboardType: TextInputType.number,
      cursorColor: ColorsManager.dividerColor,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(16.r),
        fieldHeight: 80.h,
        fieldWidth: 70.w,
        borderWidth: 2,
        activeColor: ColorsManager.mainBlue,
        inactiveColor: ColorsManager.mainBlue,
        inactiveFillColor: Colors.white,
        activeFillColor: ColorsManager.labelTextColor,
        selectedColor: ColorsManager.mainBlue,
        selectedFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (code) {},
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
