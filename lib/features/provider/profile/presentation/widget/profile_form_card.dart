import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_dashboard_app/core/component/app_button/app_button.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class ProfileFormCard extends StatelessWidget {
  const ProfileFormCard({
    super.key,
    required this.title,
    required this.children,
    this.onSave,
    this.saveButtonTitle = 'Save Change',
    this.showSaveButton = true,
    this.onEditTap,
  });

  final String title;
  final List<Widget> children;
  final VoidCallback? onSave;
  final String saveButtonTitle;
  final bool showSaveButton;
  final VoidCallback? onEditTap;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                data: title,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
              InkWell(
                onTap: onEditTap,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: SvgPicture.asset(
                  AppAssets.editIcon,
                  width: 16.w,
                  height: 16.h,
                ),
              ),
            ],
          ),
          ...children,
          if (showSaveButton) ...[
            SizedBox(height: 4.h),
            AppButton(title: saveButtonTitle, onTap: onSave ?? () {}),
          ],
        ],
      ),
    );
  }
}
