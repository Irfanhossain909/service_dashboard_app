import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class VendorSecuirityScreen extends StatelessWidget {
  const VendorSecuirityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Security"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: AppButton(title: "Update Password", onTap: () {}),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.r),
        margin: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: AppColors.backgrounColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.brown),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.h,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText(
              data: "Change password",
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
            SizedBox(height: 16.h),
            AppInputWidgetTwo(
              title: "Current Password",
              hintText: "Enter your current password",
              isOptional: true,
              isPassWord: true,
              borderColor: AppColors.brown,
            ),
            AppInputWidgetTwo(
              title: "New Password",
              hintText: "Enter your new password",
              isOptional: true,
              isPassWord: true,
              borderColor: AppColors.brown,
            ),
            AppInputWidgetTwo(
              title: "Confirm Password",
              hintText: "Enter your confirm password",
              isOptional: true,
              isPassWord: true,
              borderColor: AppColors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
