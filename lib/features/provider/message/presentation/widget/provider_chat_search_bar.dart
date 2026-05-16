import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class ProviderChatSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const ProviderChatSearchBar({
    super.key,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: SizedBox(
        height: 48.h,
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: "Search by People Name",
            hintStyle: TextStyle(
              color: AppColors.nevColor,
              fontSize: 14.sp,
            ),
            prefixIcon: const Icon(Icons.search, color: AppColors.nevColor),
            suffixIcon: Container(
              margin: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                color: AppColors.brown,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: const Icon(Icons.send, color: Colors.white, size: 18),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: AppColors.brown),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: AppColors.brown),
            ),
          ),
        ),
      ),
    );
  }
}
