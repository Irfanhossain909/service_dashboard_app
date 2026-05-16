import 'package:get/get.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/core/route/bindings/app_binding.dart';
import 'package:service_dashboard_app/core/route/bindings/auth_binding.dart';
import 'package:service_dashboard_app/core/route/bindings/navigation_screen_binding.dart';
import 'package:service_dashboard_app/core/route/bindings/provider_navigation_screen_binding.dart';
import 'package:service_dashboard_app/features/auth/connect_stripe/presentation/ui/connnet_stripe_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/forget_password_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/login_screen.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/ui/reset_password_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/business_details_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/signup_screen.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/ui/verify_otp_screen.dart';
import 'package:service_dashboard_app/features/provider/boking/presentation/ui/provider_booking_details_screen.dart';
import 'package:service_dashboard_app/features/vendor/analytics/presentation/ui/vendor_analytics_screen.dart';
import 'package:service_dashboard_app/features/vendor/controller_management/presentation/ui/vendor_add_new_controller_screen.dart';
import 'package:service_dashboard_app/features/vendor/controller_management/presentation/ui/vendor_controller_management_screen.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/ui/vendor_customer_details_screen.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/ui/vendor_customer_management_screen.dart';
import 'package:service_dashboard_app/features/vendor/dashboard/presentation/ui/vendor_dashboard_screen.dart';
import 'package:service_dashboard_app/features/vendor/delivery/presentation/ui/vendor_delivery_management_details_screen.dart';
import 'package:service_dashboard_app/features/vendor/delivery/presentation/ui/vendor_delivery_management_screen.dart';
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
import 'package:service_dashboard_app/features/provider/analytics/presentation/ui/provider_analytics_screen.dart';
import 'package:service_dashboard_app/features/provider/controller_management/presentation/ui/provider_add_new_controller_screen.dart';
import 'package:service_dashboard_app/features/provider/controller_management/presentation/ui/provider_controller_management_screen.dart';
import 'package:service_dashboard_app/features/provider/customer_management/presentation/ui/provider_customer_details_screen.dart';
import 'package:service_dashboard_app/features/provider/customer_management/presentation/ui/provider_customer_management_screen.dart';
import 'package:service_dashboard_app/features/provider/dashboard/presentation/ui/provider_dashboard_screen.dart';
import 'package:service_dashboard_app/features/provider/delivery/presentation/ui/provider_delivery_management_screen.dart';
import 'package:service_dashboard_app/features/provider/earn_and_payout/presentation/ui/provider_earn_and_payout_screen.dart';
import 'package:service_dashboard_app/features/provider/legal/presentation/ui/provider_legal_screen.dart';
import 'package:service_dashboard_app/features/provider/navigation/ui/provider_navigation_screen.dart';
import 'package:service_dashboard_app/features/provider/service/presentation/ui/provider_add_services_screen.dart';
import 'package:service_dashboard_app/features/provider/service/presentation/ui/provider_service_screen.dart';
import 'package:service_dashboard_app/features/provider/boking/presentation/ui/provider_booking_screen.dart';
import 'package:service_dashboard_app/features/provider/profile/presentation/ui/provider_profile_screen.dart';
import 'package:service_dashboard_app/features/provider/security/presentation/ui/provider_security_screen.dart';
import 'package:service_dashboard_app/features/provider/support/presentation/ui/provider_support_screen.dart';

List<GetPage> appRootRoutesFile = <GetPage>[
  // --------------------- Navigation ---------------------
  GetPage(
    name: AppRoutes.instance.vendorNavigationScreen,
    binding: NavigationScreenBinding(),
    page: () => const VendorNavigationScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.providerNavigationScreen,
    binding: ProviderNavigationScreenBinding(),
    page: () => const ProviderNavigationScreen(),
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

  /// ========= Vendor Delivery Management Routes =========
  GetPage(
    name: AppRoutes.instance.vendorDeliveryManagementScreen,
    binding: AppBinding(),
    page: () => const VendorDeliveryManagementScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.vendorDeliveryManagementDetailsScreen,
    binding: AppBinding(),
    page: () => const VendorDeliveryManagementDetailsScreen(),
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

  /// ========= Provider Delivery Management Routes =========
  GetPage(
    name: AppRoutes.instance.providerDeliveryManagementScreen,
    binding: AppBinding(),
    page: () => const ProviderDeliveryManagementScreen(),
  ),

  /// ========= Provider Order Routes =========
  GetPage(
    name: AppRoutes.instance.providerOrderScreen,
    binding: AppBinding(),
    page: () => const ProviderServiceScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.providerAppServicesScreen,
    binding: AppBinding(),
    page: () => const ProviderAppServicesScreen(),
  ),

  /// ========= Provider Bzookings Routes =========
  GetPage(
    name: AppRoutes.instance.providerBookingScreen,
    binding: AppBinding(),
    page: () => const ProviderBookingScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.providerBookingDetailsScreen,
    binding: AppBinding(),
    page: () => const ProviderBookingDetailsScreen(),
  ),

  /// ========= Provider Earn And Payout Routes =========
  GetPage(
    name: AppRoutes.instance.providerEarnAndPayoutScreen,
    binding: AppBinding(),
    page: () => const ProviderEarnAndPayoutScreen(),
  ),

  /// ========= Provider Analytics Routes =========
  GetPage(
    name: AppRoutes.instance.providerAnalyticsScreen,
    binding: AppBinding(),
    page: () => const ProviderAnalyticsScreen(),
  ),

  /// ========= Provider Routes =========
  GetPage(
    name: AppRoutes.instance.providerDashboardScreen,
    binding: AppBinding(),
    page: () => const ProviderDashboardScreen(),
  ),

  /// ========= Provider Controller Management Routes =========
  GetPage(
    name: AppRoutes.instance.providerControllerManagementScreen,
    binding: AppBinding(),
    page: () => const ProviderControllerManagementScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.providerAddNewControllerScreen,
    binding: AppBinding(),
    page: () => const ProviderAddNewControllerScreen(),
  ),

  /// ========= Provider Customer Management Routes =========
  GetPage(
    name: AppRoutes.instance.providerCustomerManagementScreen,
    binding: AppBinding(),
    page: () => const ProviderCustomerManagementScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.providerCustomerDetailsScreen,
    binding: AppBinding(),
    page: () => const ProviderCustomerDetailsScreen(),
  ),

  /// ========= Provider Profile Routes =========
  GetPage(
    name: AppRoutes.instance.providerSupportScreen,
    binding: AppBinding(),
    page: () => const ProviderSupportScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.providerLegalScreen,
    binding: AppBinding(),
    page: () => const ProviderLegalScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.providerSecurityScreen,
    binding: AppBinding(),
    page: () => const ProviderSecurityScreen(),
  ),
  GetPage(
    name: AppRoutes.instance.providerProfileScreen,
    binding: AppBinding(),
    page: () => const ProviderProfileScreen(),
  ),
];
