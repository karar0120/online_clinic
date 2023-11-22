import 'package:flutter/material.dart';
import 'package:online_clinic/core/routing/routes.dart';
import 'package:online_clinic/features/forget_password/ui/forget_password.dart';
import 'package:online_clinic/features/onBoarding/onboarding_screen.dart';
import 'package:online_clinic/features/profile/ui/face_id_screen.dart';
import 'package:online_clinic/features/profile/ui/otp_screen.dart';
import 'package:online_clinic/features/profile/ui/profile_screen.dart';

import '../../features/login/ui/login_screen.dart';
import '../../features/register/ui/register_screen.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswordScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      case Routes.otpScreen:
        return MaterialPageRoute(builder: (context) => const OtpScreen());
      case Routes.faceIdScreen:
        return MaterialPageRoute(builder: (context) => const FaceIdScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route Found"),
              ),
              body: const Center(child: Text("No Route Found")),
            ));
  }
}
