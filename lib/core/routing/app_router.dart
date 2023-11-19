import 'package:flutter/material.dart';
import 'package:online_clinic/core/routing/routes.dart';
import 'package:online_clinic/features/onBoarding/onboarding_screen.dart';

import '../../features/login/ui/widget/login_screen.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.splashScreen:
      //   return MaterialPageRoute(builder:(context)=>const SplashView());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
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
