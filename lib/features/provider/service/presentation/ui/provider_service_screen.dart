import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/provider/dashboard/presentation/ui/provider_dashboard_screen.dart';
import 'package:service_dashboard_app/features/provider/service/presentation/widget/service_screen_table.dart';
import 'package:service_dashboard_app/features/vendor/order/presentation/widget/order_screen_table.dart';

class ProviderServiceScreen extends StatelessWidget {
  const ProviderServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          data: "Services",
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      drawer: const ProviderDrawer(),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          spacing: 16.h,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.instance.providerAppServicesScreen);
              },
              child: Container(
                width: double.infinity,
                height: 44.h,
                decoration: BoxDecoration(
                  color: AppColors.brown,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  spacing: 8.w,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, size: 20.sp, color: AppColors.backgrounColor),
                    AppText(
                      data: "Add Service",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.backgrounColor,
                    ),
                  ],
                ),
              ),
            ),
            ServiceScreenTable(
              items: [
                ServiceScreenTableItemModel(
                  serviceName: "Service 1",
                  price: "100",
                  status: "Pending",
                  onView: () {},
                  onEdit: () {},
                  onDelete: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
