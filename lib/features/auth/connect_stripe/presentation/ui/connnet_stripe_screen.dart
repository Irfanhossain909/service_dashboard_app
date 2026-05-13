import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';

class ConnnetStripeScreen extends StatelessWidget {
  const ConnnetStripeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        text: "Connect Stripe Account",
        action: [
          TextButton(
            onPressed: () {},
            child: AppText(
              data: "Skip",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.r),
          margin: EdgeInsets.all(16.r),
          width: double.infinity,
          height: 220.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.black.withValues(alpha: 0.2)),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            spacing: 8.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                data: "Payment",
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
              SizedBox(height: 8.h),
              AppText(
                data: "Connect with Stripe",
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              AppText(
                data:
                    "Link your Stripe account to start receiving payments. You can finish setup now or skip and connect later.",
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.justify,
                maxLines: 3,
                color: AppColors.black,
              ),
              SizedBox(height: 12.h),
              AppButton(
                title: "Connect with Stripe",
                onTap: () {
                  Get.offAllNamed(AppRoutes.instance.loginScreen);
                },
                height: 38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
