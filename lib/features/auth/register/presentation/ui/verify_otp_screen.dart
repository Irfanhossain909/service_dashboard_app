import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/controller/verify_otp_controller.dart';
import 'package:service_dashboard_app/features/auth/register/presentation/widget/resend_code_widget.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerifyOtpController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    SizedBox(height: 50.h),
                    AppText(
                      data: "LOGO",
                      fontSize: 62.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                    SizedBox(height: 16.h),
                    AppText(
                      data: "Verify Your Account",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 8.h),
                    AppText(
                      data:
                          "We’ve sent a verification code to your email. Enter the code below to continue and secure your account.",
                      fontSize: 14.sp,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 24.h),
                    KeyedSubtree(
                      // key: ValueKey(controller.clearOtpField.value),
                      child: OtpTextField(
                        fieldWidth: 40.w,
                        fieldHeight: 50.h,
                        numberOfFields: 6, // Number of OTP fields
                        borderColor:
                            AppColors.yellow, // Border color of the OTP field
                        showFieldAsBox:
                            true, // Show fields as boxes (true for box style)
                        clearText: controller.clearOtpField.value,
                        onCodeChanged: (String code) {
                          controller.otpTextEditingController.text = code;
                        },
                        alignment: Alignment.center,
                        contentPadding: const EdgeInsets.all(0),
                        onSubmit: (String verificationCode) {
                          controller.otpTextEditingController.text =
                              verificationCode;
                        },
                        decoration: InputDecoration(
                          filled:
                              true, // Makes the background color of the text field filled
                          fillColor:
                              Colors.white, // Background color inside the box
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ), // Padding inside the box
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // Rounded corners for the box
                            borderSide: const BorderSide(
                              color: AppColors.yellow, // Border color
                              width: 2.0, // Border width
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // Rounded corners when focused
                            borderSide: const BorderSide(
                              color: AppColors.yellow, // Focused border color
                              width: 2.0, // Focused border thickness
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // Rounded corners for the enabled state
                            borderSide: const BorderSide(
                              color: AppColors
                                  .yellow, // Border color when not focused
                              width: 2.0,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // Rounded corners for error state
                            borderSide: const BorderSide(
                              color: Colors.red, // Red border on error
                              width: 2.0,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // Rounded corners on error focus
                            borderSide: const BorderSide(
                              color:
                                  Colors.red, // Red focused error border color
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    ResendCodeWidget(
                      onResend: () {
                        // Handle resend code
                      },
                    ),
                    SizedBox(height: 20.h),
                    Obx(() {
                      return AppButton(
                        isLoading: controller.isLoading.value,
                        title: "Verify",
                        onTap: () {
                          controller.verifyOtp();
                        },
                        titleSize: 18.r,
                      );
                    }),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
