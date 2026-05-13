import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/vendor/dashboard/presentation/widget/menubar_items.dart';

class VendorDashboardScreen extends StatelessWidget {
  const VendorDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          data: "Dashboard Overview",
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        width: 255.w,

        backgroundColor: AppColors.backgrounColor,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(color: AppColors.backgrounColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  data: "Menu",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
                SizedBox(height: 12.h),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.black.withValues(alpha: 0.2),
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      MenuBarItems(
                        onTap: () {},
                        icon: AppAssets.earnAndPayout,
                        title: "Earning & Payouts",
                      ),
                      MenuBarItems(
                        onTap: () {},
                        icon: AppAssets.analytics,
                        title: "Analytics",
                      ),
                      MenuBarItems(
                        onTap: () {},
                        icon: AppAssets.customerManagement,
                        title: "Customer Management",
                      ),
                      MenuBarItems(
                        isLastItem: true,
                        onTap: () {},
                        icon: AppAssets.controllerManagement,
                        title: "Controller Management",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                AppText(
                  data: "Settings",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
                SizedBox(height: 12.h),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.black.withValues(alpha: 0.2),
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      MenuBarItems(
                        onTap: () {},
                        icon: AppAssets.profile,
                        title: "Profile",
                      ),
                      MenuBarItems(
                        onTap: () {},
                        icon: AppAssets.analytics,
                        title: "Security",
                      ),
                      MenuBarItems(
                        onTap: () {},
                        icon: AppAssets.legal,
                        title: "Legal",
                      ),
                      MenuBarItems(
                        onTap: () async {
                          Get.toNamed(AppRoutes.instance.vendorSupportScreen);
                        },
                        icon: AppAssets.support,
                        title: "Support",
                      ),
                      MenuBarItems(
                        isLastItem: true,
                        onTap: () {},
                        icon: AppAssets.logout,
                        title: "Logout",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: AppText(
          data: "Vendor Dashboard",
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }
}
