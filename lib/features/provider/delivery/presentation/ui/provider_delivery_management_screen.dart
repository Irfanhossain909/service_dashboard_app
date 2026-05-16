import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/provider/dashboard/presentation/ui/provider_dashboard_screen.dart';
import 'package:service_dashboard_app/features/provider/delivery/presentation/controller/provider_delivery_management_controller.dart';

class ProviderDeliveryManagementScreen extends StatelessWidget {
  const ProviderDeliveryManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProviderDeliveryManagementController>(
      init: ProviderDeliveryManagementController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: AppText(
              data: "Delivery Management",
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          drawer: const ProviderDrawer(),
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
                    Tab(text: "Local Delivery"),
                    Tab(text: "International Delivery"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    // Local Delivery
                    DeliveryLocalCard(),

                    // International Delivery
                    DeliveryLocalCard(),
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

class DeliveryLocalCard extends StatelessWidget {
  const DeliveryLocalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _deliveryStatusCard(),
          _deliveryStatusCard(),
          _deliveryStatusCard(),
        ],
      ),
    );
  }

  Widget _deliveryStatusCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h, left: 16.w, right: 16.w),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.black.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 12.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                data: "Order #po-2",
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: AppText(
                  data: "In Transit",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.backgrounColor,
                ),
              ),
            ],
          ),
          _customerDeliveryDetails(title: "Driver", value: "John Doe"),
          _customerDeliveryDetails(title: "ETA", value: "25 min"),
          _customerDeliveryDetails(
            title: "Pickup",
            value: "Gulshan 1, Dhaka 1212, Bangladesh",
          ),
          _customerDeliveryDetails(
            title: "Drop address",
            value: "Banani Road 11, Dhaka 1213, Bangladesh",
          ),

          GestureDetector(
            onTap: () {
              Get.toNamed(
                AppRoutes.instance.providerDeliveryManagementDetailsScreen,
              );
            },
            child: Container(
              width: 110.w,
              height: 30.h,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: AppColors.brown,
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 4.w,
                children: [
                  AppText(
                    data: "View Details",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.backgrounColor,
                  ),
                  Icon(
                    Icons.arrow_outward_rounded,
                    size: 16.sp,
                    color: AppColors.backgrounColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _customerDeliveryDetails({
    required String title,
    required String value,
    bool isBold = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          data: title,
          fontSize: 12.sp,
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
          color: AppColors.black,
        ),
        AppText(
          data: value,
          fontSize: 12.sp,
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
          color: AppColors.black,
        ),
      ],
    );
  }
}
