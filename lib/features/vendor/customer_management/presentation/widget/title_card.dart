
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class TitleCard extends StatelessWidget {
  final String? title;
  final String? value;
  const TitleCard({
    super.key,
    this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.nevColor, width: 1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4.h,
        children: [
          AppText(
            data: title ?? "",
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
          AppText(
            data: value ?? "",
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
