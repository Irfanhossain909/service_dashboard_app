import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/vendor/controller_management/presentation/widget/custom_category_table.dart';

class ProviderControllerManagementScreen extends StatelessWidget {
  const ProviderControllerManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Controller Management"),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  data: "Controller List",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),

                GestureDetector(
                  onTap: () {
                    Get.toNamed(
                      AppRoutes.instance.providerAddNewControllerScreen,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.brown,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      spacing: 4.w,
                      children: [
                        AppText(
                          data: "New Controller",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.backgrounColor,
                        ),
                        Icon(
                          Icons.add_box_outlined,
                          size: 16.sp,
                          color: AppColors.offWhite,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            CustomCategoryTable(
              items: [
                TableItemModel(
                  sl: "01",
                  name: "Coffee & Drinks",
                  email: "asabir724@gmail.com",
                  onView: () {},
                  onEdit: () {},
                  onDelete: () {},
                ),

                TableItemModel(
                  sl: "02",
                  name: "Burger",
                  email: "test@gmail.com",
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
