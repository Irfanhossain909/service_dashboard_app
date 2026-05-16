import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/provider/boking/presentation/widget/booking_item_table.dart';
import 'package:service_dashboard_app/features/provider/dashboard/presentation/ui/provider_dashboard_screen.dart';

class ProviderBookingScreen extends StatelessWidget {
  const ProviderBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          data: "Booking",
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      drawer: const ProviderDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12.h,
          children: [
            BookingItemTable(
              items: [
                BookingItemModel(
                  customer: "Customer 1",
                  date: "2021-01-01",
                  status: "Pending",
                  amount: "100",
                  onView: () {
                    Get.toNamed(AppRoutes.instance.providerBookingDetailsScreen);
                  },
                ),
                BookingItemModel(
                  customer: "Customer 2",
                  date: "2021-01-02",
                  status: "Completed",
                  amount: "200",
                  onView: () {
                    Get.toNamed(AppRoutes.instance.providerBookingDetailsScreen);
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
