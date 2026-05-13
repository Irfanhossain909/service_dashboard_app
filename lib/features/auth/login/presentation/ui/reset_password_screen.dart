import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/controller/reset_password_controller.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ResetPasswordController controller = Get.put(
      ResetPasswordController(),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: AppText(
                      data: "LOGO",
                      fontSize: 62.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Center(
                    child: AppText(
                      data: "Verify Your Account",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  AppText(
                    data:
                        "Create a new password for your account. Make sure it's strong and secure.",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black.withValues(alpha: .7),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                  ),

                  SizedBox(height: 24.h),

                  AppInputWidgetTwo(
                    isOptional: true,
                    isPassWord: true,
                    hintText: "Enter your password",
                    borderColor: AppColors.nevColor,
                    title: "Password",
                    titleFontSize: 14.sp,
                    keyboardType: TextInputType.visiblePassword,
                    titleFontWeight: FontWeight.w500,
                    titleColor: AppColors.black,
                    onChanged: controller.onPasswordChanged,
                  ),

                  SizedBox(height: 12.h),

                  AppInputWidgetTwo(
                    isOptional: true,
                    isPassWord: true,
                    hintText: "Please re-enter your password",
                    borderColor: AppColors.nevColor,
                    title: "Confirm Password",
                    titleFontSize: 14.sp,
                    keyboardType: TextInputType.visiblePassword,
                    titleFontWeight: FontWeight.w500,
                    titleColor: AppColors.black,
                    onChanged: controller.onConfirmPasswordChanged,
                  ),

                  SizedBox(height: 12.h),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info_rounded,
                        size: 14.sp,
                        color: AppColors.yellow,
                      ),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: AppText(
                          data:
                              "Your password must be at least 8 characters. Include multiple words and symbols for security.",
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black.withValues(alpha: .6),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  Obx(
                    () => AppButton(
                      title: "Save Password",
                      isLoading: controller.isLoading.value,
                      onTap: () async {
                        await controller.savePassword();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
