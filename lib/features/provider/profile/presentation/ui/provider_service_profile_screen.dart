import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_dropdown/app_dropdown_gender.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_upload/app_upload_box.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/core/const/app_demo_list.dart';
import 'package:service_dashboard_app/features/provider/profile/presentation/widget/profile_dropdown_helper.dart';
import 'package:service_dashboard_app/features/provider/profile/presentation/widget/profile_form_card.dart';

class ProviderServiceProfileScreen extends StatelessWidget {
  const ProviderServiceProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(text: 'Service Setup'),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: ProfileFormCard(
            title: 'Service Setup',
            saveButtonTitle: 'Save Changes',
            children: [
              AppInputWidgetTwo(
                title: 'Service title',
                hintText: 'e.g. AC Repair & Maintenance',
                isOptional: true,
                keyboardType: TextInputType.text,
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
                title: 'Starting price',
                hintText: 'e.g. 1500',
                isOptional: true,
                keyboardType: TextInputType.number,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Delivery time (days)',
                hintText: 'e.g. 2',
                isOptional: true,
                keyboardType: TextInputType.number,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Description',
                hintText: 'Enter Your Description',
                isOptional: true,
                isDescription: true,
                keyboardType: TextInputType.multiline,
                borderColor: AppColors.brown,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 12.w,
                children: [
                  Expanded(
                    flex: 3,
                    child: AppInputWidgetTwo(
                      title: 'Features',
                      hintText: 'Title',
                      isOptional: true,
                      keyboardType: TextInputType.text,
                      borderColor: AppColors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: AppButton(
                      title: '+ Add Feature',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const AppUploadBox(
                title: 'Upload Logo',
                label: 'Upload Logo',
                borderColor: AppColors.brown,
              ),
              const AppUploadBox(
                title: 'Upload Cover Image',
                label: 'Upload Cover Image',
                borderColor: AppColors.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
