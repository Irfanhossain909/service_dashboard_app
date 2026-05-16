import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/const/app_demo_list.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';

class BusinessDetailsScreen extends StatelessWidget {
  const BusinessDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Business Details"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppButton(
            title: "Continue",
            onTap: () {
              Get.toNamed(AppRoutes.instance.connnetStripeScreen);
            },
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.h,
              children: [
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your business name",
                  title: "Business Name",
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your owner name",
                  title: "Owner name",
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your email address",
                  title: "Email",
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your phone number",
                  title: "Phone",
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your address",
                  title: "Address",
                ),
                KeyValueDropdown(
                  title: "Category",
                  hint: "Select Category",
                  items: AppDemoList.categories.entries
                      .map(
                        (entry) => DropdownItemModel(
                          key: entry.key,
                          value: entry.value,
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.text,
                  hintText: "Enter your shop type",
                  title: "Shop type",
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.number,
                  hintText: "Enter your product count",
                  title: "Product count",
                ),
                KeyValueDropdown(
                  title: "Delivery type",
                  hint: "Select Delivery type",
                  items: AppDemoList.categories.entries
                      .map(
                        (entry) => DropdownItemModel(
                          key: entry.key,
                          value: entry.value,
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                AppInputWidgetTwo(
                  isDescription: true,
                  isOptional: true,
                  keyboardType: TextInputType.text,
                  hintText: "Enter your  description",
                  title: "Description",
                ),
                AppText(
                  data: "Upload Logo",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                Container(
                  width: double.infinity,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: AppColors.black.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_upload_outlined,
                        size: 48.sp,
                        color: AppColors.black,
                      ),
                      AppText(
                        data: "Upload Logo ",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ),
                AppText(
                  data: "Upload Cover Image",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                Container(
                  width: double.infinity,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: AppColors.black.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_upload_outlined,
                        size: 48.sp,
                        color: AppColors.black,
                      ),
                      AppText(
                        data: "Upload Cover Image ",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
