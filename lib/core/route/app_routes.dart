class AppRoutes {
  AppRoutes._privateConstructor();
  static final AppRoutes _instance = AppRoutes._privateConstructor();
  static AppRoutes get instance => _instance;
  /////////////  initial or splash screen
  final String initial = "/";
  final String onBoardingScreen = "/onboarding-screen";
  final String roleScreen = "/role-screen";

  // ======== Customer Routes ========

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

  final String vendorSupportScreen = "/vendor-support-screen";
}
