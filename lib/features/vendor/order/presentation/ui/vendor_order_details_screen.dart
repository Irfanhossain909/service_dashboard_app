import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/const/app_demo_list.dart';
import 'package:service_dashboard_app/features/vendor/order/presentation/controller/vendor_order_details_controller.dart';

class VendorOrderDetailsScreen extends StatelessWidget {
  const VendorOrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VendorOrderDetailsController>(
      init: VendorOrderDetailsController(),
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppbar(text: "Order Details"),
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
                    LocalDelivery(),

                    // International Delivery
                    InternationalDelivery(),
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

class InternationalDelivery extends StatelessWidget {
  const InternationalDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: SingleChildScrollView(
          child: Column(
            spacing: 12.r,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KeyValueDropdown(
                title: "Courier",
                hint: "Select Courier",
                items: AppDemoList.categories.entries
                    .map(
                      (entry) =>
                          DropdownItemModel(key: entry.key, value: entry.value),
                    )
                    .toList(),
                onChanged: (value) {
                  print(value);
                },
              ),

              AppButton(title: "Create Shipment Request", onTap: () {}),

              Container(
                padding: EdgeInsets.all(12.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: AppColors.black.withValues(alpha: 0.2),
                  ),
                ),
                child: Column(
                  spacing: 12.r,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      data: "Order #po-1 · Cold brew set",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    AppText(
                      data: "Created 4/3/2025, 12:00:00 AM",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),

                    Divider(color: AppColors.black.withValues(alpha: 0.2)),

                    AppText(
                      data: "Customer details",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    _customerDetails(
                      title: "Customer name",
                      value: "Asha Rahman",
                    ),
                    _customerDetails(title: "Phone", value: "+8801712345678"),
                    _customerDetails(
                      title: "Email",
                      value: "asharahman@gmail.com",
                    ),
                    _customerDetails(
                      title: "Address",
                      value: "123, Main Street, Anytown, USA",
                    ),

                    Divider(color: AppColors.black.withValues(alpha: 0.2)),

                    AppText(
                      data: "Delivery status",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    _customerDetails(title: "Courier", value: "Asha Rahman"),
                    _customerDetails(
                      title: "Tracking ID",
                      value: "jkfhaeiwyhsb",
                    ),
                    _customerDetails(title: "Status", value: "Pending"),
                    Divider(color: AppColors.black.withValues(alpha: 0.2)),
                    AppText(
                      data: "Order items",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    _customerDetails(title: "Notebook pack", value: "\$1800"),
                    _customerDetails(title: "Qty", value: "2"),
                    Divider(color: AppColors.black.withValues(alpha: 0.2)),
                    AppText(
                      data: "Payment",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    _customerDetails(title: "Subtotal", value: "\$3600"),
                    _customerDetails(title: "Delivery fee", value: "\$3600"),
                    Divider(color: AppColors.black.withValues(alpha: 0.2)),
                    _customerDetails(
                      title: "Total",
                      value: "\$3600",
                      isBold: true,
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

  _customerDetails({
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

class LocalDelivery extends StatelessWidget {
  const LocalDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: SingleChildScrollView(
          child: Column(
            spacing: 12.r,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppButton(title: "Send Request", onTap: () {}),

              Container(
                padding: EdgeInsets.all(12.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: AppColors.black.withValues(alpha: 0.2),
                  ),
                ),
                child: Column(
                  spacing: 12.r,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      data: "Order #po-1 · Cold brew set",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    AppText(
                      data: "Created 4/3/2025, 12:00:00 AM",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),

                    Divider(color: AppColors.black.withValues(alpha: 0.2)),

                    AppText(
                      data: "Customer details",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    _customerDetails(
                      title: "Customer name",
                      value: "Asha Rahman",
                    ),
                    _customerDetails(title: "Phone", value: "+8801712345678"),
                    _customerDetails(
                      title: "Email",
                      value: "asharahman@gmail.com",
                    ),
                    _customerDetails(
                      title: "Address",
                      value: "123, Main Street, Anytown, USA",
                    ),

                    Divider(color: AppColors.black.withValues(alpha: 0.2)),

                    AppText(
                      data: "Delivery status",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    _customerDetails(title: "Courier", value: "Asha Rahman"),
                    _customerDetails(
                      title: "Tracking ID",
                      value: "jkfhaeiwyhsb",
                    ),
                    _customerDetails(title: "Status", value: "Pending"),
                    Divider(color: AppColors.black.withValues(alpha: 0.2)),
                    AppText(
                      data: "Order items",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    _customerDetails(title: "Notebook pack", value: "\$1800"),
                    _customerDetails(title: "Qty", value: "2"),
                    Divider(color: AppColors.black.withValues(alpha: 0.2)),
                    AppText(
                      data: "Payment",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    _customerDetails(title: "Subtotal", value: "\$3600"),
                    _customerDetails(title: "Delivery fee", value: "\$3600"),
                    Divider(color: AppColors.black.withValues(alpha: 0.2)),
                    _customerDetails(
                      title: "Total",
                      value: "\$3600",
                      isBold: true,
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

  _customerDetails({
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
