import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/controller/forget_password_controller.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgetPasswordController controller = Get.put(
      ForgetPasswordController(),
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
                      data: "Forget Password",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  AppText(
                    data:
                        "No worries! Enter the email address associated with your account, and we'll send you instructions to reset your password.",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black.withValues(alpha: .7),
                    textAlign: TextAlign.center,
                    maxLines: 4,
                  ),

                  SizedBox(height: 24.h),

                  AppInputWidgetTwo(
                    isOptional: true,
                    isEmail: true,
                    hintText: "Enter your email address",
                    borderColor: AppColors.nevColor,
                    title: "Email",
                    titleFontSize: 14.sp,
                    keyboardType: TextInputType.emailAddress,
                    titleFontWeight: FontWeight.w500,
                    titleColor: AppColors.black,
                    onChanged: controller.onEmailChanged,
                  ),

                  SizedBox(height: 12.h),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 14.sp,
                        color: AppColors.green,
                      ),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: AppText(
                          data:
                              "You may receive notifications via SMS or email from us for security and login purposes.",
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
                      title: "Continue",
                      isLoading: controller.isLoading.value,
                      onTap: () async {
                        await controller.sendInstructions();
                        Get.toNamed(AppRoutes.instance.resetPasswordScreen);
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
