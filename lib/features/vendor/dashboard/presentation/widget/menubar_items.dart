import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class MenuBarItems extends StatelessWidget {
  final VoidCallback? onTap;
  final String? icon;
  final String? title;
  final bool? isLastItem;

  const MenuBarItems({
    super.key,
    this.onTap,
    this.icon,
    this.title,
    this.isLastItem = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,

      /// ✅ Default drawer close + delay + action
      onTap: () async {
        Navigator.pop(context);

        await Future.delayed(const Duration(milliseconds: 250));

        onTap?.call();
      },

      child: Container(
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          border: Border(
            bottom: isLastItem == true
                ? BorderSide.none
                : BorderSide(
                    color: AppColors.black.withValues(alpha: 0.2),
                  ),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon ?? AppAssets.earnAndPayout,
              color: AppColors.black,
              width: 12.w,
              height: 12.h,
            ),

            SizedBox(width: 12.w),

            AppText(
              data: title ?? "Earning & Payouts",
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),

            const Spacer(),

            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.black,
              size: 12.sp,
            ),
          ],
        ),
      ),
    );
  }
}