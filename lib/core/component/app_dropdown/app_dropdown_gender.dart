import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class DropdownItemModel {
  final String key;
  final String value;
  final IconData icon;

  DropdownItemModel({
    required this.key,
    required this.value,
    required this.icon,
  });
}

class KeyValueDropdown extends StatelessWidget {
  final String? title;
  final List<DropdownItemModel> items;
  final String? selectedKey;
  final String hint;
  final Function(String? key) onChanged;

  const KeyValueDropdown({
    super.key,
    this.title,
    required this.items,
    required this.onChanged,
    this.selectedKey,
    this.hint = 'Select',
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
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null && title!.trim().isNotEmpty) ...[
          Text(
            title!,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.backgrounColor,
            ),
          ),
          SizedBox(height: 6.h),
        ],

        DropdownButtonFormField<String>(
          value: normalizedSelectedKey,
          hint: Text(
            hint,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.offWhite.withValues(alpha: 0.4),
            ),
          ),

          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item.key,
              child: Row(
                children: [
                  Icon(item.icon, size: 16.sp, color: AppColors.nevColor),
                  SizedBox(width: 8.w),
                  Text(
                    item.value,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.offWhite,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),

          onChanged: onChanged,

          decoration: InputDecoration(
            border: border,
            enabledBorder: border,
            focusedBorder: border,
            disabledBorder: border,
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          ),
        ),
      ],
    );
  }
}
