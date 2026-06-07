import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/vendor/analytics/presentation/widget/vendor_revenue_overview_chart.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/widget/title_card.dart';
import 'package:service_dashboard_app/features/vendor/dashboard/presentation/widget/active_delivery_card.dart';
import 'package:service_dashboard_app/features/vendor/dashboard/presentation/widget/dashboard_data_table.dart';
import 'package:service_dashboard_app/features/vendor/dashboard/presentation/widget/menubar_items.dart';

class ProviderDashboardScreen extends StatelessWidget {
  const ProviderDashboardScreen({super.key});

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
      drawer: const ProviderDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12.h,
            children: [
              Row(
                spacing: 12.w,
                children: [
                  Expanded(
                    child: TitleCard(title: "Total Revenue", value: "\$12000"),
                  ),
                  Expanded(
                    child: TitleCard(title: "Total Orders", value: "100"),
                  ),
                ],
              ),
              Row(
                spacing: 12.w,
                children: [
                  Expanded(
                    child: TitleCard(title: "Active Deliveries", value: "456"),
                  ),
                  Expanded(
                    child: TitleCard(title: "Total Products", value: "567"),
                  ),
                ],
              ),
              VendorRevenueOverviewChart(
                chartTitle: 'Revenue Overview',
                dataPoints: [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000],
                xAxisLabels: [
                  "Jan",
                  "Feb",
                  "Mar",
                  "Apr",
                  "May",
                  "Jun",
                  "Jul",
                  "Aug",
                  "Sep",
                  "Oct",
                  "Nov",
                  "Dec",
                ],
                maxValue: 1000,
                selectedPeriod: RevenueOverviewPeriod.monthly,
                onPeriodChanged: (p) {
                  print(p);
                },
              ),

              AppText(
                data: "Recent Orders",
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
              DashboardDataTable(
                items: [
                  DashboardDataTableItemModel(
                    orderID: "6890",
                    type: "Product",
                    status: "Pending",
                    amount: "\$100",
                  ),
                ],
              ),
              AppText(
                data: "Upcoming bookings",
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
              DashboardDataTable(
                items: [
                  DashboardDataTableItemModel(
                    orderID: "6890",
                    type: "Product",
                    status: "Pending",
                    amount: "\$100",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProviderDrawer extends StatelessWidget {
  const ProviderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.instance.providerEarnAndPayoutScreen,
                        );
                      },
                      icon: AppAssets.earnAndPayout,
                      title: "Earning & Payouts",
                    ),
                    MenuBarItems(
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.providerAnalyticsScreen);
                      },
                      icon: AppAssets.analytics,
                      title: "Analytics",
                    ),
                    MenuBarItems(
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.instance.providerCustomerManagementScreen,
                        );
                      },
                      icon: AppAssets.customerManagement,
                      title: "Customer Management",
                    ),
                    MenuBarItems(
                      isLastItem: true,
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.instance.providerControllerManagementScreen,
                        );
                      },
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
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.instance.providerProfileMainScreen,
                        );
                        // Get.toNamed(AppRoutes.instance.providerProfileScreen);
                      },
                      icon: AppAssets.profile,
                      title: "Profile",
                    ),
                    MenuBarItems(
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.providerSecurityScreen);
                      },
                      icon: AppAssets.analytics,
                      title: "Security",
                    ),
                    MenuBarItems(
                      onTap: () {
                        Get.toNamed(AppRoutes.instance.providerLegalScreen);
                      },
                      icon: AppAssets.legal,
                      title: "Legal",
                    ),
                    MenuBarItems(
                      onTap: () async {
                        Get.toNamed(AppRoutes.instance.providerSupportScreen);
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
    );
  }
}
