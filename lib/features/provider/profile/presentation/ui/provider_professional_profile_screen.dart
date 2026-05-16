import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/const/app_demo_list.dart';
import 'package:service_dashboard_app/features/provider/profile/presentation/widget/profile_dropdown_helper.dart';
import 'package:service_dashboard_app/features/provider/profile/presentation/widget/profile_form_card.dart';

class ProviderProfessionalProfileScreen extends StatelessWidget {
  const ProviderProfessionalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(text: 'Professional Information'),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: ProfileFormCard(
            title: 'Professional Information',
            children: [
              KeyValueDropdown(
                title: 'Experience level',
                hint: 'Select experience level',
                borderColor: AppColors.brown,
                items: mapToDropdownItems(AppDemoList.experienceLevels),
                onChanged: (_) {},
              ),
              AppInputWidgetTwo(
                title: 'Years of experience',
                hintText: 'e.g. 3',
                isOptional: true,
                keyboardType: TextInputType.number,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Skills',
                hintText: 'Type a skill and press Enter ...',
                isOptional: true,
                keyboardType: TextInputType.text,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Portfolio links',
                hintText: 'https://...',
                isOptional: true,
                keyboardType: TextInputType.url,
                borderColor: AppColors.brown,
              ),
              KeyValueDropdown(
                title: 'Languages (multi-select)',
                hint: 'Select languages',
                borderColor: AppColors.brown,
                items: mapToDropdownItems(AppDemoList.languages),
                onChanged: (_) {},
              ),
              KeyValueDropdown(
                title: 'Availability',
                hint: 'Select availability',
                borderColor: AppColors.brown,
                items: mapToDropdownItems(AppDemoList.availabilityOptions),
                onChanged: (_) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
