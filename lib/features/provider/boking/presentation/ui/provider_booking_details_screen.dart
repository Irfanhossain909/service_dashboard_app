import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/provider/boking/presentation/widget/status_selectiable_dropdown.dart';

class ProviderBookingDetailsScreen extends StatelessWidget {
  const ProviderBookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Booking Details"),
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
            borderRadius: BorderRadius.circular(12.r),
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
                _customerDetails(title: "Customer name", value: "Asha Rahman"),
                _customerDetails(title: "Phone", value: "+123456789"),
                _customerDetails(title: "Email", value: "example@email.com"),
                _customerDetails(
                  title: "Address",
                  value: "Gulshan 1, Dhaka 1212, Bangladesh",
                ),

                Divider(color: AppColors.black.withValues(alpha: 0.2)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      data: "Service details",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                    AppText(
                      data: "Picked_up",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ],
                ),
                _customerDetails(
                  title: "Service name",
                  value: "Full-Stack Web Development",
                ),
                _customerDetails(title: "Category", value: "IT Services"),
                _customerDetails(
                  title: "Description",
                  value:
                      "End-to-end app delivery with React, Node, and PostgreSQL.",
                ),
                Divider(color: AppColors.black.withValues(alpha: 0.2)),
                AppText(
                  data: "Booking info",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
                _customerDetails(title: "Booking ID", value: "BK-1001"),
                _customerDetails(title: "Date", value: "May 01, 2025"),
                _customerDetails(title: "Time", value: "2:00 PM"),
                StatusSelectableDropdown(
                  title: "Status",
                  items: ["Pending", "Completed", "Cancelled"],
                  onChanged: (value) {
                    print(value);
                  },
                ),
                Divider(color: AppColors.black.withValues(alpha: 0.2)),
                AppText(
                  data: "Delivery",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
                _customerDetails(title: "Delivery window", value: "7 days"),
                _customerDetails(title: "Deadline", value: "May 01, 2025"),
                Divider(color: AppColors.black.withValues(alpha: 0.2)),
                AppText(
                  data: "Pricing",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
                _customerDetails(title: "Base price", value: r"$200"),
                Divider(color: AppColors.black.withValues(alpha: 0.2)),
                _customerDetails(
                  title: "Total price",
                  value: r"$200",
                  isBold: true,
                ),
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
        SizedBox(
          width: Get.width * 0.5,
          child: AppText(
            textAlign: TextAlign.end,
            data: value,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            fontSize: 12.sp,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
