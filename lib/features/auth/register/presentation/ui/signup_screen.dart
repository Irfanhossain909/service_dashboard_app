import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/widget/divider_with_text.dart';
import 'package:service_dashboard_app/features/auth/login/presentation/widget/role_selection_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                spacing: 8.h,
                children: [
                  AppText(
                    data: "LOGO",
                    fontSize: 62.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  AppText(
                    data: "Create account",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  AppText(
                    data: "Sign up to your dashboard",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),

                  SizedBox(height: 16.h),

                  Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.nevColor),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      spacing: 8.w,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.google,
                          width: 20.w,
                          height: 20.h,
                        ),
                        AppText(
                          data: "Continue With Google",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8.h),

                  DividerWithText(text: "OR"),

                  // SizedBox(height: 12.h),
                  RoleSelectionWidget(
                    title: "I am a",
                    items: [
                      RoleItem(displayValue: "Vendor", returnValue: "vendor"),
                      RoleItem(
                        displayValue: "Service Provider",
                        returnValue: "service_provider",
                      ),
                    ],
                    onChanged: (value) {
                      print(value); // vendor / customer
                    },
                  ),
                  SizedBox(height: 12.h),

                  AppInputWidgetTwo(
                    isOptional: true,
                    hintText: "Enter your full name",
                    borderColor: AppColors.nevColor,
                    title: "Full name",
                    titleFontSize: 14.sp,
                    keyboardType: TextInputType.name,
                    titleFontWeight: FontWeight.w500,
                    titleColor: AppColors.black,
                  ),
                  AppInputWidgetTwo(
                    isOptional: true,
                    hintText: "Enter your email address",
                    borderColor: AppColors.nevColor,
                    title: "Email",
                    titleFontSize: 14.sp,
                    keyboardType: TextInputType.emailAddress,
                    titleFontWeight: FontWeight.w500,
                    titleColor: AppColors.black,
                  ),
                  AppInputWidgetTwo(
                    isOptional: true,
                    hintText: "Enter your phone number",
                    borderColor: AppColors.nevColor,
                    title: "Phone",
                    titleFontSize: 14.sp,
                    keyboardType: TextInputType.number,
                    titleFontWeight: FontWeight.w500,
                    titleColor: AppColors.black,
                  ),
                  AppInputWidgetTwo(
                    isOptional: true,
                    hintText: "Enter your password",
                    borderColor: AppColors.nevColor,
                    title: "Password",
                    titleFontSize: 14.sp,
                    keyboardType: TextInputType.visiblePassword,
                    titleFontWeight: FontWeight.w500,
                    titleColor: AppColors.black,
                  ),
                  AppInputWidgetTwo(
                    isOptional: true,
                    hintText: "Enter confirm password",
                    borderColor: AppColors.nevColor,
                    title: "Confirm password",
                    titleFontSize: 14.sp,
                    keyboardType: TextInputType.visiblePassword,
                    titleFontWeight: FontWeight.w500,
                    titleColor: AppColors.black,
                  ),
                  SizedBox(height: 12.h),
                  AppButton(
                    title: "Continue",
                    onTap: () {
                      Get.toNamed(AppRoutes.instance.verifyOtpScreen);
                    },
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        data: "Already have an account? ",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Get.toNamed(AppRoutes.instance.loginScreen);
                        },
                        child: AppText(
                          data: "Sign In",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.brown,
                        ),
                      ),
                    ],
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
