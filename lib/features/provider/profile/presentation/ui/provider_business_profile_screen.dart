import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_segment/app_segment_toggle.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/const/app_demo_list.dart';
import 'package:service_dashboard_app/features/provider/profile/presentation/widget/profile_dropdown_helper.dart';
import 'package:service_dashboard_app/features/provider/profile/presentation/widget/profile_form_card.dart';

class ProviderBusinessProfileScreen extends StatelessWidget {
  const ProviderBusinessProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(text: 'Business Information'),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: ProfileFormCard(
            title: 'Business Information',
            children: [
              AppInputWidgetTwo(
                title: 'Business Name',
                hintText: 'Enter your business name',
                isOptional: true,
                keyboardType: TextInputType.name,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Owner Name',
                hintText: 'Enter your owner name',
                isOptional: true,
                keyboardType: TextInputType.name,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Phone',
                hintText: 'Enter your phone number',
                isOptional: true,
                keyboardType: TextInputType.phone,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Email',
                hintText: 'Enter your email',
                isOptional: true,
                isEmail: true,
                keyboardType: TextInputType.emailAddress,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Address',
                hintText: 'Enter your address',
                isOptional: true,
                isDescription: true,
                keyboardType: TextInputType.streetAddress,
                borderColor: AppColors.brown,
              ),
              KeyValueDropdown(
                title: 'Service category (multi-select)',
                hint: 'Select Category',
                borderColor: AppColors.brown,
                items: mapToDropdownItems(AppDemoList.categories),
                onChanged: (_) {},
              ),
              AppInputWidgetTwo(
                title: 'Service area',
                hintText: 'Enter your service area',
                isOptional: true,
                keyboardType: TextInputType.streetAddress,
                borderColor: AppColors.brown,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: AppText(
                      data: 'Service Location',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(
                    width: 140.w,
                    child: AppSegmentToggle(
                      options: const ['Single', 'Multi'],
                      onChanged: (_) {},
                    ),
                  ),
                ],
              ),
              KeyValueDropdown(
                hint: 'Select countries',
                borderColor: AppColors.brown,
                items: mapToDropdownItems(AppDemoList.countries),
                onChanged: (_) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
