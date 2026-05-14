import 'package:get/get.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/core/route/bindings/app_binding.dart';
import 'package:service_dashboard_app/core/route/bindings/auth_binding.dart';
import 'package:service_dashboard_app/core/route/bindings/navigation_screen_binding.dart';
import 'package:service_dashboard_app/features/auth/connect_stripe/presentation/ui/connnet_stripe_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/forget_password_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/login_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/reset_password_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/business_details_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/signup_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/verify_otp_screen.dart';
import 'package:service_dashboard_app/features/vendor/analytics/presentation/ui/vendor_analytics_screen.dart';
import 'package:service_dashboard_app/features/vendor/controller_management/presentation/ui/vendor_add_new_controller_screen.dart';
import 'package:service_dashboard_app/features/vendor/controller_management/presentation/ui/vendor_controller_management_screen.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/ui/vendor_customer_details_screen.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/ui/vendor_customer_management_screen.dart';
import 'package:service_dashboard_app/features/vendor/dashboard/presentation/ui/vendor_dashboard_screen.dart';
import 'package:service_dashboard_app/features/vendor/earn_and_payout/presentation/ui/vendor_earn_and_payout_screen.dart';
import 'package:service_dashboard_app/features/vendor/legal/presentation/ui/vendor_legal_screen.dart';
import 'package:service_dashboard_app/features/vendor/navigation/ui/vendor_navigation_screen.dart';
import 'package:service_dashboard_app/features/vendor/order/presentation/ui/vendor_order_details_screen.dart';
import 'package:service_dashboard_app/features/vendor/order/presentation/ui/vendor_order_screen.dart';
import 'package:service_dashboard_app/features/vendor/products/presentation/ui/vendor_add_product_screen.dart';
import 'package:service_dashboard_app/features/vendor/products/presentation/ui/vendor_product_screen.dart';
import 'package:service_dashboard_app/features/vendor/profile/presentation/ui/vendor_profile_screen.dart';
import 'package:service_dashboard_app/features/vendor/security/presentation/ui/vendor_secuirity_screen.dart';
import 'package:service_dashboard_app/features/vendor/support/presentation/ui/vendor_support_screen.dart';

List<GetPage> appRootRoutesFile = <GetPage>[
  // --------------------- Navigation ---------------------
  GetPage(
    name: AppRoutes.instance.vendorNavigationScreen,
    binding: NavigationScreenBinding(),
    page: () => const VendorNavigationScreen(),
  ),

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

  /// ========= Vendor Order Routes =========
  GetPage(
    name: AppRoutes.instance.vendorOrderScreen,
    binding: AppBinding(),
    page: () => const VendorOrderScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.vendorOrderDetailsScreen,
    binding: AppBinding(),
    page: () => const VendorOrderDetailsScreen(),
  ),

  /// ========= Vendor Product Routes =========
  GetPage(
    name: AppRoutes.instance.vendorProductScreen,
    binding: AppBinding(),
    page: () => const VendorProductScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.vendorAddProductScreen,
    binding: AppBinding(),
    page: () => const VendorAddProductScreen(),
  ),

  /// ========= Vendor Earn And Payout Routes =========
  GetPage(
    name: AppRoutes.instance.vendorEarnAndPayoutScreen,
    binding: AppBinding(),
    page: () => const VendorEarnAndPayoutScreen(),
  ),

  /// ========= Vendor Analytics Routes =========
  GetPage(
    name: AppRoutes.instance.vendorAnalyticsScreen,
    binding: AppBinding(),
    page: () => const VendorAnalyticsScreen(),
  ),

  /// ========= Vendor Routes =========
  GetPage(
    name: AppRoutes.instance.vendorDashboardScreen,
    binding: AppBinding(),
    page: () => const VendorDashboardScreen(),
  ),

  /// ========= Vendor Controller Management Routes =========
  GetPage(
    name: AppRoutes.instance.vendorControllerManagementScreen,
    binding: AppBinding(),
    page: () => const VendorControllerManagementScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.vendorAddNewControllerScreen,
    binding: AppBinding(),
    page: () => const VendorAddNewControllerScreen(),
  ),

  /// ========= Vendor Customer Management Routes =========
  GetPage(
    name: AppRoutes.instance.vendorCustomerManagementScreen,
    binding: AppBinding(),
    page: () => const VendorCustomerManagementScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.vendorCustomerDetailsScreen,
    binding: AppBinding(),
    page: () => const VendorCustomerDetailsScreen(),
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
