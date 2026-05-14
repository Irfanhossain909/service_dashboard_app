class AppRoutes {
  AppRoutes._privateConstructor();
  static final AppRoutes _instance = AppRoutes._privateConstructor();
  static AppRoutes get instance => _instance;
  /////////////  initial or splash screen
  final String initial = "/";
  final String onBoardingScreen = "/onboarding-screen";
  final String roleScreen = "/role-screen";

  /// ========= Navigation Routes =========
  final String vendorNavigationScreen = "/vendor-navigation-screen";


  /// ========= Vendor Product Routes =========
  final String vendorProductScreen = "/vendor-product-screen";
  final String vendorAddProductScreen = "/vendor-add-product-screen";

  // ======== Vendor Routes ========

  ///// AUTH
  final String loginScreen = "/login-screen";
  final String forgetPasswordScreen = "/forget-password-screen";
  final String resetPasswordScreen = "/reset-password-screen";
  final String signupScreen = "/signup-screen";
  final String verifyOtpScreen = "/verify-otp-screen";
  final String businessDetailsScreen = "/business-details-screen";
  final String connnetStripeScreen = "/connnet-stripe-screen";

  /// ========= Vendor Routes =========
  final String vendorDashboardScreen = "/vendor-dashboard-screen";

  /// ========= Vendor Earn And Payout Routes =========
  final String vendorEarnAndPayoutScreen = "/vendor-earn-and-payout-screen";


  /// ========= Vendor Analytics Routes =========
  final String vendorAnalyticsScreen = "/vendor-analytics-screen";

  /// ========= Vendor Controller Management Routes =========
  final String vendorControllerManagementScreen = "/vendor-controller-management-screen";
  final String vendorAddNewControllerScreen = "/vendor-add-new-controller-screen";

  /// ========= Vendor Customer Management Routes =========
  final String vendorCustomerManagementScreen = "/vendor-customer-management-screen";
  final String vendorCustomerDetailsScreen = "/vendor-customer-details-screen";



/// ========= Vendor Profile Routes =========
  final String vendorLegalScreen = "/vendor-legal-screen";
  final String vendorSupportScreen = "/vendor-support-screen";
  final String vendorSecurityScreen = "/vendor-security-screen";
  final String vendorProfileScreen = "/vendor-profile-screen";
}
