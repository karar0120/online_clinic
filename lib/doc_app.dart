import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_clinic/core/routing/routes.dart';
import 'package:online_clinic/core/theming/color.dart';

import 'core/routing/app_router.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Doc App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: AppRoute.generateRoute,
      ),
    );
  }
}
