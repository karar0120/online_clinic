import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildProfilePhoto extends StatelessWidget {
  const BuildProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 65.r,
          backgroundImage:
              const AssetImage("assets/images/back_ground_profile.png"),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset("assets/svgs/edit_icon.svg"))
      ],
    );
  }
}
