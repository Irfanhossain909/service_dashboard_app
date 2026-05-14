import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/vendor/legal/presentation/controller/vendor_legal_controller.dart';

class VendorLegalScreen extends StatelessWidget {
  const VendorLegalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VendorLegalController>(
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppbar(text: "Legal"),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(2.w),
                margin: EdgeInsets.all(16.r),
                height: 45.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // background color
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.black.withValues(alpha: 0.2),
                  ),
                ),
                child: TabBar(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  splashFactory: NoSplash.splashFactory,
                  controller: controller.tabController,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: AppColors.brown, // blue selected color
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black87,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  ),
                  tabs: const [
                    Tab(text: "Terms & Conditions"),
                    Tab(text: "Privacy Policy"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    Center(
                      child: AppText(
                        data: "Terms & Conditions",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                    Center(
                      child: AppText(
                        data: "Privacy Policy",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
