
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/core/route/app_routes_file.dart';
import 'package:service_dashboard_app/core/route/bindings/app_binding.dart';
import 'package:service_dashboard_app/core/theme/app_theme.dart';
import 'package:service_dashboard_app/core/utils/app_snackbar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        initialBinding: AppBinding(),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Service Dashboard',
        theme: AppTheme.darkTheme,
        getPages: appRootRoutesFile,

        /// ✅ Dynamic Route
        initialRoute: AppRoutes.instance.loginScreen,
      ),
    );
  }
}