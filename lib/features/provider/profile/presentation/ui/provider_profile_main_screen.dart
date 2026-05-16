import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';

class ProviderProfileMainScreen extends StatelessWidget {
  const ProviderProfileMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Profile"),
      body: Container(
        margin: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.black.withValues(alpha: 0.2)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        padding: EdgeInsets.all(16.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 22.h,
          children: [
            _buildPersonalInformation(
              onTap: () {
                Get.toNamed(AppRoutes.instance.providerProfileScreen);
              },
              title: "Personal Information",
            ),
            _buildPersonalInformation(
              onTap: () {
                Get.toNamed(AppRoutes.instance.providerBusinessProfileScreen);
              },
              title: "Business Information",
            ),
            _buildPersonalInformation(
              onTap: () {
                Get.toNamed(
                  AppRoutes.instance.providerProfessionalProfileScreen,
                );
              },
              title: "Professional Information",
            ),
            _buildPersonalInformation(
              onTap: () {
                Get.toNamed(AppRoutes.instance.providerServiceProfileScreen);
              },
              title: "Service Setup",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPersonalInformation({
    required VoidCallback onTap,
    required String title,
  }) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            data: title,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            size: 24.sp,
            color: AppColors.black.withValues(alpha: 0.8),
          ),
        ],
      ),
    );
  }
}
