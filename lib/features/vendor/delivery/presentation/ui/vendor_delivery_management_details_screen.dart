import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class VendorDeliveryManagementDetailsScreen extends StatelessWidget {
  const VendorDeliveryManagementDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Delivery Management Details"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: AppButton(title: "Mark as Delivered", onTap: () {}),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Container(
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: AppColors.black.withValues(alpha: 0.2)),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 12.r,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  data: "Order #po-1 · Cold brew set",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),

                Divider(color: AppColors.black.withValues(alpha: 0.2)),

                AppText(
                  data: "Order info",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
                _customerDetails(title: "Order ID", value: "po-1"),
                _customerDetails(title: "Product", value: "Cold brew set"),
                _customerDetails(title: "Customer name", value: "Asha Rahman"),
                _customerDetails(title: "Phone", value: "+123456789"),
                _customerDetails(title: "Email", value: "example@email.com"),

                Divider(color: AppColors.black.withValues(alpha: 0.2)),

                AppText(
                  data: "Delivery overview",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
                _customerDetails(
                  title: "Pickup",
                  value: "Gulshan 1, Dhaka 1212, Bangladesh",
                ),
                _customerDetails(
                  title: "Drop address",
                  value: "Banani Road 11, Dhaka 1213, Bangladesh",
                ),
                _customerDetails(title: "Distance", value: "8.5 km"),
                _customerDetails(title: "ETA", value: "8.5 km"),
                _customerDetails(
                  title: "Assigned driver",
                  value: "Rashida Begum",
                ),
                Divider(color: AppColors.black.withValues(alpha: 0.2)),
                AppText(
                  data: "Driver info",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
                _customerDetails(title: "Driver name", value: "Rashida Begum"),
                _customerDetails(title: "Vehicle type", value: "car"),
                _customerDetails(title: "Vehicle number", value: "DHK-M-8812"),
                _customerDetails(title: "Vehicle number", value: "Phone"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _customerDetails({
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
