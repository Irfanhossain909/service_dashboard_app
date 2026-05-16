import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class StatusSelectableDropdown extends StatefulWidget {
  final String title;
  final List<String> items;
  final String? initialValue;
  final bool isBold;
  final Function(String value)? onChanged;

  const StatusSelectableDropdown({
    super.key,
    required this.title,
    required this.items,
    this.initialValue,
    this.isBold = false,
    this.onChanged,
  });

  @override
  State<StatusSelectableDropdown> createState() =>
      _StatusSelectableDropdownState();
}

class _StatusSelectableDropdownState
    extends State<StatusSelectableDropdown> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();

    selectedValue = widget.initialValue ??
        (widget.items.isNotEmpty ? widget.items.first : "");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          data: widget.title,
          fontSize: 12.sp,
          fontWeight: widget.isBold
              ? FontWeight.w700
              : FontWeight.w400,
          color: AppColors.black,
        ),

        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: Get.width * 0.5,
          ),
          child: IntrinsicWidth(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedValue,
                isDense: true,
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.black,
                  size: 20.sp,
                ),
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: widget.isBold
                      ? FontWeight.w700
                      : FontWeight.w400,
                  color: AppColors.black,
                ),
                items: widget.items.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: AppText(
                      data: item,
                      fontSize: 12.sp,
                      fontWeight: widget.isBold
                          ? FontWeight.w700
                          : FontWeight.w400,
                      color: AppColors.black,
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      selectedValue = value;
                    });

                    widget.onChanged?.call(value);
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}