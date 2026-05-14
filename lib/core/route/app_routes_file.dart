import 'package:get/get.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/core/route/bindings/app_binding.dart';
import 'package:service_dashboard_app/core/route/bindings/auth_binding.dart';
import 'package:service_dashboard_app/features/auth/connect_stripe/presentation/ui/connnet_stripe_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/forget_password_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/login_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/reset_password_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/business_details_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/signup_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/verify_otp_screen.dart';
import 'package:service_dashboard_app/features/vendor/dashboard/presentation/ui/vendor_dashboard_screen.dart';
import 'package:service_dashboard_app/features/vendor/legal/presentation/ui/vendor_legal_screen.dart';
import 'package:service_dashboard_app/features/vendor/profile/presentation/ui/vendor_profile_screen.dart';
import 'package:service_dashboard_app/features/vendor/security/presentation/ui/vendor_secuirity_screen.dart';
import 'package:service_dashboard_app/features/vendor/support/presentation/ui/vendor_support_screen.dart';

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
  GetPage(
    name: AppRoutes.instance.signupScreen,
    binding: AuthBinding(),
    page: () => const SignupScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.verifyOtpScreen,
    binding: AuthBinding(),
    page: () => const VerifyOtpScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.businessDetailsScreen,
    binding: AuthBinding(),
    page: () => const BusinessDetailsScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.connnetStripeScreen,
    page: () => const ConnnetStripeScreen(),
  ),

  /// ========= Vendor Routes =========
  GetPage(
    name: AppRoutes.instance.vendorDashboardScreen,
    binding: AppBinding(),
    page: () => const VendorDashboardScreen(),
  ),

  /// ========= Vendor Profile Routes =========
  GetPage(
    name: AppRoutes.instance.vendorSupportScreen,
    binding: AppBinding(),
    page: () => const VendorSupportScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.vendorLegalScreen,
    binding: AppBinding(),
    page: () => const VendorLegalScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.vendorSecurityScreen,
    binding: AppBinding(),
    page: () => const VendorSecuirityScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.vendorProfileScreen,
    binding: AppBinding(),
    page: () => const VendorProfileScreen(),
  ),
];
