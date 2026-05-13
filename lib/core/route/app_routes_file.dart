import 'package:get/get.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/core/route/bindings/auth_binding.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/forget_password_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/login_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/reset_password_screen.dart';

List<GetPage> appRootRoutesFile = <GetPage>[
  // --------------------- Navigation ---------------------
  // GetPage(
  //   name: AppRoutes.instance.navigationScreen,
  //   page: () => const NavigationScreen(),
  // ),

  /////// AUTH 
  GetPage(
    name: AppRoutes.instance.loginScreen,
    binding: AuthBinding(),
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.forgetPasswordScreen,
    binding: AuthBinding(),
    page: () => const ForgetPasswordScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.resetPasswordScreen,
    binding: AuthBinding(),
    page: () => const ResetPasswordScreen(),
  ),
  
];
