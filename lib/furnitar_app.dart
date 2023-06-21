import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furnit_ar/core/constants/app_strings.dart';
import 'package:furnit_ar/core/theme/light/light_theme.dart';
import 'package:furnit_ar/router_config.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class FurnitArApp extends StatelessWidget {
  const FurnitArApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        key: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: lightTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
