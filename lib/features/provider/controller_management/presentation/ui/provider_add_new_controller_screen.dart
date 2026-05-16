import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/provider/controller_management/presentation/controller/provider_add_new_controller.dart';
import 'package:service_dashboard_app/features/vendor/controller_management/presentation/widget/app_checkbox_tile.dart';

class ProviderAddNewControllerScreen extends StatelessWidget {
  const ProviderAddNewControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProviderAddNewController>(
      init: ProviderAddNewController(),
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppbar(text: "Add New Controller"),
          body: Padding(
            padding: EdgeInsets.all(16.r),
            child: SafeArea(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.brown, width: 1.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12.h,
                  children: [
                    AppInputWidgetTwo(
                      isOptional: true,
                      borderColor: AppColors.brown,
                      title: "Full Name",
                      hintText: "Enter your full name",
                      keyboardType: TextInputType.text,
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    AppInputWidgetTwo(
                      isOptional: true,
                      borderColor: AppColors.brown,
                      title: "Email",
                      hintText: "Enter your email",
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        print(value);
                      },
                    ),

                    AppText(
                      data: "Page Access Permission",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),

                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                            color: AppColors.brown,
                            width: 1.r,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Dashboard Overview",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Shop Management",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Categories Management",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Item Management",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Post Management",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Order Management",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Controller Management",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Earning & Payouts",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Messages",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Contact Support",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Settings",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Terms & Conditions",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                              AppCheckboxTile(
                                boxSize: 12.w,
                                title: "Privacy Policy",

                                /// optional
                                // initialValue: true,
                                onChanged: (value) {
                                  print(value);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      spacing: 12.w,
                      children: [
                        Expanded(
                          child: AppButton(
                            filColor: AppColors.backgrounColor,
                            titleColor: AppColors.black,
                            borderColor: AppColors.brown,
                            borderWidth: 1.r,
                            title: "Cancel",
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ),
                        Expanded(
                          child: AppButton(
                            title: "Create Controller",
                            onTap: () {
                              print("Save");
                            },
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
      },
    );
  }
}
