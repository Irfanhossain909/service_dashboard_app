import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/widget/customer_management_table.dart';

class ProviderCustomerManagementScreen extends StatelessWidget {
  const ProviderCustomerManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Customer Management"),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppInputWidgetTwo(
              hintText: "Search Transaction ID",
              prefix: Icon(
                Icons.search,
                color: AppColors.black.withValues(alpha: 0.4),
                size: 18.r,
              ),
              onTap: () {
                print("Search");
              },
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(height: 16.h),
            AppText(
              data: "Customer List",
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 12.h),
            CustomerManagementTable(
              items: [
                CustomerManagementTableItemModel(
                  customer: "John Doe",
                  country: "United States",
                  totalSpend: "\$1000",
                  onView: () {
                    Get.toNamed(AppRoutes.instance.providerCustomerDetailsScreen);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
