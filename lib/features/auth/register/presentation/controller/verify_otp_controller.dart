import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';

class VerifyOtpController extends GetxController {
  final clearOtpField = false.obs;
  final otpTextEditingController = TextEditingController();

  @override
  void onClose() {
    otpTextEditingController.dispose();
    super.onClose();
  }

  var isLoading = false.obs;

  // Login Method
  void verifyOtp() {
    isLoading.value = true;

    // Fake delay (API simulate)
    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;
      Get.toNamed(AppRoutes.instance.businessDetailsScreen);
      Get.snackbar("Success", "OTP Verified Successful");
    });
  }
}
