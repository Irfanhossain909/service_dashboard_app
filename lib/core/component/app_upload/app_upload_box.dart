import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class AppUploadBox extends StatelessWidget {
  const AppUploadBox({
    super.key,
    this.title,
    this.label,
    this.onTap,
    this.height,
    this.borderColor,
  });

  final String? title;
  final String? label;
  final VoidCallback? onTap;
  final double? height;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final effectiveBorderColor =
        borderColor ?? AppColors.black.withValues(alpha: 0.2);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        if (title != null)
          AppText(
            data: title!,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
        InkWell(
          onTap: onTap,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Container(
            width: double.infinity,
            height: height ?? 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: effectiveBorderColor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.file_upload_outlined,
                  size: 40.sp,
                  color: AppColors.black,
                ),
                AppText(
                  data: label ?? 'Upload',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
