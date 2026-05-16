import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/const/app_demo_list.dart';
import 'package:service_dashboard_app/features/provider/service/presentation/controller/provider_order_details_controller.dart';

class ProviderAppServicesScreen extends StatelessWidget {
  const ProviderAppServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProviderOrderDetailsController>(
      init: ProviderOrderDetailsController(),
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppbar(text: "Order Details"),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 16.r, right: 16.r, bottom: 8.r),
              child: Column(
                spacing: 8.h,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton(title: "Save Service", onTap: () {}),
                  AppButton(
                    title: "Cancel",
                    onTap: () {},
                    borderColor: AppColors.brown,
                    filColor: AppColors.backgrounColor,
                    titleColor: AppColors.black,
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(16.r),
            child: Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: AppColors.brown),
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16.h,
                    children: [
                      AppText(
                        data: "Service information",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),

                      AppInputWidgetTwo(
                        isOptional: true,
                        keyboardType: TextInputType.name,
                        borderColor: AppColors.brown,

                        hintText: "AC servicing & maintenance",
                        title: "Service title",
                      ),
                      KeyValueDropdown(
                        title: "Category",
                        hint: "Select Category",
                        borderColor: AppColors.brown,
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
                        title: "Service Country",
                        hint: "Select Category",
                        borderColor: AppColors.brown,
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
                        borderColor: AppColors.brown,
                        hintText: "Enter your product price",
                        title: "Base price",
                      ),
                      AppInputWidgetTwo(
                        isOptional: true,
                        keyboardType: TextInputType.name,
                        borderColor: AppColors.brown,
                        textColor: AppColors.black,
                        hintText: "Enter your delivery time",
                        title: "Delivery time",
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        spacing: 12.w,
                        children: [
                          Expanded(
                            flex: 3,
                            child: AppInputWidgetTwo(
                              title: "Package details",
                              hintText: "Enter your delivery time",
                              borderColor: AppColors.brown,
                              textColor: AppColors.black,
                              keyboardType: TextInputType.name,
                              isOptional: true,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: AppButton(title: "+ Add", onTap: () {}),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        spacing: 12.w,
                        children: [
                          Expanded(
                            flex: 3,
                            child: AppInputWidgetTwo(
                              title: "Services included",
                              hintText: "Enter your delivery time",
                              borderColor: AppColors.brown,
                              textColor: AppColors.black,
                              keyboardType: TextInputType.name,
                              isOptional: true,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: AppButton(title: "+ Add", onTap: () {}),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        spacing: 12.w,
                        children: [
                          Expanded(
                            flex: 3,
                            child: AppInputWidgetTwo(
                              title: "Technologies",
                              hintText: "Enter your delivery time",
                              borderColor: AppColors.brown,
                              textColor: AppColors.black,
                              keyboardType: TextInputType.name,
                              isOptional: true,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: AppButton(title: "+ Add", onTap: () {}),
                          ),
                        ],
                      ),

                      AppInputWidgetTwo(
                        isDescription: true,
                        isOptional: true,
                        borderColor: AppColors.brown,
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
                              data: "Upload Logo ",
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
          ),
        );
      },
    );
  }
}
