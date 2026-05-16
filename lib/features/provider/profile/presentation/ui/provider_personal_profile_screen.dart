import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/provider/profile/presentation/widget/profile_form_card.dart';

class ProviderPersonalProfileScreen extends StatelessWidget {
  const ProviderPersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(text: 'Personal Information'),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: ProfileFormCard(
            title: 'Personal Information',
            children: [
              AppInputWidgetTwo(
                title: 'Full name',
                hintText: 'Enter your Full Name',
                isOptional: true,
                keyboardType: TextInputType.name,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Email',
                hintText: 'Enter your Email',
                isOptional: true,
                isEmail: true,
                keyboardType: TextInputType.emailAddress,
                borderColor: AppColors.brown,
              ),
              AppInputWidgetTwo(
                title: 'Phone',
                hintText: 'Enter your Phone Number',
                isOptional: true,
                keyboardType: TextInputType.phone,
                borderColor: AppColors.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
