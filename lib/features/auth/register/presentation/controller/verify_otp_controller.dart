import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/core/service/storage/get_storage_services.dart';

class VerifyOtpController extends GetxController {
  final clearOtpField = false.obs;
  final otpTextEditingController = TextEditingController();
  final role = GetStorageServices.instance.getRole();
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
      if (role == "vendor") {
        Get.toNamed(AppRoutes.instance.businessDetailsScreen);
      } else {
        // Get.toNamed(AppRoutes.instance.serviceProviderDetailsScreen);
        Get.snackbar(
          "Error",
          "Service Provider Details Screen is not available yet",
        );
      }
      Get.snackbar("Success", "OTP Verified Successful");
    });
  }
}
