import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/provider/dashboard/presentation/ui/provider_dashboard_screen.dart';
import 'package:service_dashboard_app/features/provider/navigation/controller/provider_navigation_screen_controller.dart';
import 'package:service_dashboard_app/features/provider/service/presentation/ui/provider_service_screen.dart';
import 'package:service_dashboard_app/features/provider/boking/presentation/ui/provider_booking_screen.dart';
import 'package:service_dashboard_app/features/provider/message/presentation/ui/provider_message_screen.dart';

class ProviderNavigationScreen extends StatelessWidget {
  const ProviderNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProviderNavigationScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Obx(
            () => IndexedStack(
              index: controller.selectedIndex.value,
              children: [
                ProviderDashboardScreen(),
                ProviderBookingScreen(),
                ProviderServiceScreen(),
                const ProviderMessageScreen(),
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
                    AppAssets.nav5,
                    AppAssets.nav6,
                    AppAssets.nav7,
                  ];
                  final textPaths = [
                    "Dashboard",
                    "Booking",
                    "Services",
                    "Messages",
                  ];
                  return InkWell(
                    onTap: () => controller.changeIndex(index),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4.h,
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
