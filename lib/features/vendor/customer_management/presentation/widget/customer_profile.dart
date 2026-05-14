
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_dashboard_app/core/component/app_image/app_image_circular.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.nevColor, width: 1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Row(
            spacing: 4.w,
            children: [
              SvgPicture.asset(
                AppAssets.profile,
                color: AppColors.black,
                width: 16.r,
                height: 16.r,
              ),
              AppText(
                data: "Customer Profile",
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              AppImageCircular(
                url:
                    "https://i.pinimg.com/736x/33/72/07/337207c6038dd87033dcbe607542f553.jpg",
                width: 94.w,
                height: 88.h,
                borderRadius: 12.r,
                fit: BoxFit.cover,
              ),

              SizedBox(width: 12.w),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4.h,
                children: [
                  AppText(
                    data: "Mira K.",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                  AppText(
                    data: "alex@example.com",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 16.r,
                        color: AppColors.black,
                      ),
                      AppText(
                        data: "United States",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_outlined,
                        size: 16.r,
                        color: AppColors.black,
                      ),
                      AppText(
                        data: "+1 (555) 123-4567",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
