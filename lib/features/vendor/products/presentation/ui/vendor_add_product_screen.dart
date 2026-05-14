import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/const/app_demo_list.dart';

class VendorAddProductScreen extends StatelessWidget {
  const VendorAddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Add Product"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 12.h,
            children: [
              AppButton(title: "Save Product"),
              AppButton(
                title: "Cancel",
                filColor: AppColors.backgrounColor,
                borderColor: AppColors.brown,
                titleColor: AppColors.black,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: AppColors.brown),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12.h,
              children: [
                AppText(
                  data: "Basic Info",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your product name",
                  title: "Product Name",
                  borderColor: AppColors.brown,
                ),
                KeyValueDropdown(
                  borderColor: AppColors.brown,
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
                KeyValueDropdown(
                  borderColor: AppColors.brown,
                  title: "Product Category",
                  hint: "Select Product Category",
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
                  keyboardType: TextInputType.name,
                  hintText: "Enter your owner name",
                  title: "Owner name",
                  borderColor: AppColors.brown,
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your price",
                  title: "Price",
                  borderColor: AppColors.brown,
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your discount",
                  title: "Discount(Optional)",
                  borderColor: AppColors.brown,
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your stock",
                  title: "Stock",
                  borderColor: AppColors.brown,
                ),

                AppText(
                  data: "Upload Images",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                Container(
                  width: double.infinity,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: AppColors.brown),
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
                        data: "Upload Images ",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ),
                AppInputWidgetTwo(
                  isOptional: true,
                  keyboardType: TextInputType.name,
                  hintText: "Enter your description",
                  title: "Description",
                  isDescription: true,
                  borderColor: AppColors.brown,
                ),
                AppText(
                  data: "Top Highlights",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                Row(
                  spacing: 12.w,
                  children: [
                    Expanded(
                      child: AppInputWidgetTwo(
                        isOptional: true,
                        keyboardType: TextInputType.name,
                        hintText: "Title",
                        borderColor: AppColors.brown,
                      ),
                    ),
                    Expanded(
                      child: AppInputWidgetTwo(
                        isOptional: true,
                        keyboardType: TextInputType.name,
                        hintText: "Value",
                        borderColor: AppColors.brown,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
