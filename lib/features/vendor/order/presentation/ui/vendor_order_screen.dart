import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/vendor/order/presentation/widget/order_screen_table.dart';

class VendorOrderScreen extends StatelessWidget {
  const VendorOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Orders", showLeading: false),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            OrderScreenTable(
              items: [
                OrderScreenTableItemModel(
                  orderId: "7890",
                  type: "Product",
                  amount: "100",
                  status: "Pending",
                  onView: () {
                    Get.toNamed(AppRoutes.instance.vendorOrderDetailsScreen);
                  },
                ),
                OrderScreenTableItemModel(
                  orderId: "127890",
                  type: "Product",
                  amount: "100",
                  status: "Pending",
                  onView: () {
                    Get.toNamed(AppRoutes.instance.vendorOrderDetailsScreen);
                  },
                ),
                OrderScreenTableItemModel(
                  orderId: "12890",
                  type: "Product",
                  amount: "100",
                  status: "Pending",
                  onView: () {
                    Get.toNamed(AppRoutes.instance.vendorOrderDetailsScreen);
                  },
                ),
                OrderScreenTableItemModel(
                  orderId: "12890",
                  type: "Product",
                  amount: "100",
                  status: "Pending",
                  onView: () {
                    Get.toNamed(AppRoutes.instance.vendorOrderDetailsScreen);
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
