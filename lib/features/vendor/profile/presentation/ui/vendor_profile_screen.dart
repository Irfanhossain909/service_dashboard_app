import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class VendorProfileScreen extends StatelessWidget {
  const VendorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Profile"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: AppButton(title: "Save Changes", onTap: () {}),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.backgrounColor,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.brown),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12.h,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          data: "Business Information",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                        SvgPicture.asset(
                          AppAssets.editIcon,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                    AppInputWidgetTwo(
                      title: "Business Name",
                      hintText: "Enter your business name",
                      isOptional: true,
                      keyboardType: TextInputType.name,
                      borderColor: AppColors.brown,
                    ),
                    AppInputWidgetTwo(
                      title: "Owner Name",
                      hintText: "Enter your owner name",
                      isOptional: true,
                      keyboardType: TextInputType.name,
                      borderColor: AppColors.brown,
                    ),
                    AppInputWidgetTwo(
                      title: "Email",
                      hintText: "Enter your email",
                      isOptional: true,
                      keyboardType: TextInputType.emailAddress,
                      borderColor: AppColors.brown,
                    ),
                    AppInputWidgetTwo(
                      title: "Phone ",
                      hintText: "Enter your phone number",
                      isOptional: true,
                      keyboardType: TextInputType.name,
                      borderColor: AppColors.brown,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.backgrounColor,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.brown),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12.h,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          data: "Address",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                        SvgPicture.asset(
                          AppAssets.editIcon,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                    AppInputWidgetTwo(
                      title: "Street Address",
                      hintText: "Enter your street address",
                      isOptional: true,
                      keyboardType: TextInputType.name,
                      borderColor: AppColors.brown,
                    ),
                    KeyValueDropdown(
                      borderColor: AppColors.brown,
                      title: "Service Location",
                      hint: "Select Service Location",
                      items: [
                        DropdownItemModel(
                          key: "1",
                          value: "Service Location 1",
                        ),
                        DropdownItemModel(
                          key: "2",
                          value: "Service Location 2",
                        ),
                        DropdownItemModel(
                          key: "3",
                          value: "Service Location 3",
                        ),
                        DropdownItemModel(
                          key: "4",
                          value: "Service Location 4",
                        ),
                        DropdownItemModel(
                          key: "5",
                          value: "Service Location 5",
                        ),
                        DropdownItemModel(
                          key: "6",
                          value: "Service Location 6",
                        ),
                        DropdownItemModel(
                          key: "7",
                          value: "Service Location 7",
                        ),
                        DropdownItemModel(
                          key: "8",
                          value: "Service Location 8",
                        ),
                        DropdownItemModel(
                          key: "9",
                          value: "Service Location 9",
                        ),
                        DropdownItemModel(
                          key: "10",
                          value: "Service Location 10",
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.backgrounColor,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.brown),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12.h,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          data: "Shop Details",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                        SvgPicture.asset(
                          AppAssets.editIcon,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),

                    KeyValueDropdown(
                      borderColor: AppColors.brown,
                      title: "Category",
                      hint: "Select Category",
                      items: [
                        DropdownItemModel(
                          key: "1",
                          value: "Service Category 1",
                        ),
                        DropdownItemModel(
                          key: "2",
                          value: "Service Category 2",
                        ),
                        DropdownItemModel(
                          key: "3",
                          value: "Service Category 3",
                        ),
                        DropdownItemModel(
                          key: "4",
                          value: "Service Category 4",
                        ),
                        DropdownItemModel(
                          key: "5",
                          value: "Service Category 5",
                        ),
                        DropdownItemModel(
                          key: "6",
                          value: "Service Category 6",
                        ),
                        DropdownItemModel(
                          key: "7",
                          value: "Service Category 7",
                        ),
                        DropdownItemModel(
                          key: "8",
                          value: "Service Category 8",
                        ),
                        DropdownItemModel(
                          key: "9",
                          value: "Service Category 9",
                        ),
                        DropdownItemModel(
                          key: "10",
                          value: "Service Category 10",
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    KeyValueDropdown(
                      borderColor: AppColors.brown,
                      title: "Shop Type",
                      hint: "Select Shop Type",
                      items: [
                        DropdownItemModel(key: "1", value: "Shop Type 1"),
                        DropdownItemModel(key: "2", value: "Shop Type 2"),
                        DropdownItemModel(key: "3", value: "Shop Type 3"),
                        DropdownItemModel(key: "4", value: "Shop Type 4"),
                        DropdownItemModel(key: "5", value: "Shop Type 5"),
                        DropdownItemModel(key: "6", value: "Shop Type 6"),
                        DropdownItemModel(key: "7", value: "Shop Type 7"),
                        DropdownItemModel(key: "8", value: "Shop Type 8"),
                        DropdownItemModel(key: "9", value: "Shop Type 9"),
                        DropdownItemModel(key: "10", value: "Shop Type 10"),
                      ],
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    AppInputWidgetTwo(
                      title: "Approx Product Count",
                      hintText: "Enter your approximate product count",
                      isOptional: true,
                      keyboardType: TextInputType.name,
                      borderColor: AppColors.brown,
                    ),
                    AppInputWidgetTwo(
                      isDescription: true,
                      title: "Description",
                      hintText: "Enter your approximate product count",
                      isOptional: true,
                      keyboardType: TextInputType.name,
                      borderColor: AppColors.brown,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
