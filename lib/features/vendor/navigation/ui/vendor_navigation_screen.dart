import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/vendor/dashboard/presentation/ui/vendor_dashboard_screen.dart';
import 'package:service_dashboard_app/features/vendor/delivery/presentation/ui/vendor_delivery_management_screen.dart';
import 'package:service_dashboard_app/features/vendor/navigation/controller/vendor_navigation_screen_controller.dart';
import 'package:service_dashboard_app/features/vendor/order/presentation/ui/vendor_order_screen.dart';
import 'package:service_dashboard_app/features/vendor/products/presentation/ui/vendor_product_screen.dart';

class VendorNavigationScreen extends StatelessWidget {
  const VendorNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: VendorNavigationScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Obx(
            () => IndexedStack(
              index: controller.selectedIndex.value,
              children: [
                VendorDashboardScreen(),
                VendorProductScreen(),
                VendorOrderScreen(),
                VendorDeliveryManagementScreen(),
              ],
            ),
          ),

          bottomNavigationBar: Container(
            // margin: const EdgeInsets.all(16),
            padding: EdgeInsets.only(bottom: 44.r, top: 24.r),
            decoration: BoxDecoration(
              color: AppColors.backgrounColor,

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 4, // 👈 blur বন্ধ
                  spreadRadius: 1,
                  offset: const Offset(0, -4), // 👈 নিচে shadow
                ),
              ],
            ),

            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(4, (index) {
                  final isSelected = controller.selectedIndex.value == index;
                  final iconPaths = [
                    AppAssets.nav1,
                    AppAssets.nav2,
                    AppAssets.nav3,
                    AppAssets.nav4,
                  ];
                  final textPaths = [
                    "Dashboard",
                    "Product",
                    "Order",
                    "Delivery",
                  ];
                  return InkWell(
                    onTap: () => controller.changeIndex(index),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          iconPaths[index],
                          width: 24.r,
                          height: 24.r,
                          colorFilter: ColorFilter.mode(
                            isSelected ? AppColors.brown : AppColors.nevColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        AppText(
                          data: textPaths[index],
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: isSelected
                              ? AppColors.brown
                              : AppColors.nevColor,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        );
      },
    );
  }
}
