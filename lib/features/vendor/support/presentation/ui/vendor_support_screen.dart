import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class VendorSupportScreen extends StatelessWidget {
  const VendorSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Support"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: AppButton(title: "Send Message", onTap: () {}),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.r),
        margin: EdgeInsets.all(16.r),
        width: double.infinity,
        height: 460.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.brown),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  data: "Contact support",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
                SizedBox(height: 16.h),
                AppInputWidgetTwo(
                  readOnly: true,
                  controller: TextEditingController(text: "John Doe"),
                  title: "Name",
                  hintText: "Enter subject",
                  borderColor: AppColors.brown,
                  keyboardType: TextInputType.text,
                  isOptional: true,
                ),
                AppInputWidgetTwo(
                  readOnly: true,
                  title: "Email",
                  controller: TextEditingController(
                    text: "john.doe@example.com",
                  ),
                  hintText: "Enter email",
                  borderColor: AppColors.brown,
                  keyboardType: TextInputType.text,
                  isOptional: true,
                ),
                AppInputWidgetTwo(
                  title: "Subject",
                  hintText: "Enter subject",
                  borderColor: AppColors.brown,
                  keyboardType: TextInputType.text,
                  isOptional: true,
                ),
                AppInputWidgetTwo(
                  height: 100.h,
                  title: "Message",
                  hintText: "Enter message",
                  borderColor: AppColors.brown,
                  keyboardType: TextInputType.text,
                  isOptional: true,
                  isDescription: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
