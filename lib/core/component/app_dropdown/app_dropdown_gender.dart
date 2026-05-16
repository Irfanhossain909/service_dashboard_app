import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class DropdownItemModel {
  final String key;
  final String value;

  DropdownItemModel({required this.key, required this.value});
}

class KeyValueDropdown extends StatelessWidget {
  final String? title;
  final List<DropdownItemModel> items;
  final String? selectedKey;
  final String hint;

  final Color? borderColor;
  final Function(String? key) onChanged;

  const KeyValueDropdown({
    super.key,
    this.title,
    required this.items,
    required this.onChanged,
    this.selectedKey,
    this.hint = 'Select',
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    String? normalizedSelectedKey = selectedKey;

    if (normalizedSelectedKey != null && normalizedSelectedKey.isNotEmpty) {
      final hasSelectedKey = items.any(
        (item) => item.key == normalizedSelectedKey,
      );

      if (!hasSelectedKey) {
        final matchedItems = items
            .where((item) => item.value == normalizedSelectedKey)
            .toList();

        if (matchedItems.length == 1) {
          normalizedSelectedKey = matchedItems.first.key;
        } else {
          normalizedSelectedKey = null;
        }
      }
    } else {
      normalizedSelectedKey = null;
    }

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: borderColor ?? AppColors.black.withValues(alpha: 0.2),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null && title!.trim().isNotEmpty) ...[
          AppText(
            data: title!,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          SizedBox(height: 6.h),
        ],

        DropdownButtonFormField<String>(
          value: normalizedSelectedKey,
          hint: AppText(
            data: hint,
            fontSize: 14.sp,
            color: AppColors.black.withValues(alpha: 0.4),
          ),

          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item.key,
              child: AppText(
                data: item.value,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
            );
          }).toList(),

          onChanged: onChanged,

          dropdownColor: AppColors.backgrounColor,

          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.black,
            size: 20.sp,
          ),

          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.offWhite,
          ),

          decoration: InputDecoration(
            border: border,
            enabledBorder: border,
            focusedBorder: border,
            disabledBorder: border,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h,
            ),
          ),
        ),
      ],
    );
  }
}
