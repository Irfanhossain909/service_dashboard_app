import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class AppSegmentToggle extends StatefulWidget {
  const AppSegmentToggle({
    super.key,
    required this.options,
    this.initialIndex = 0,
    this.onChanged,
    this.title,
  });

  final List<String> options;
  final int initialIndex;
  final ValueChanged<int>? onChanged;
  final String? title;

  @override
  State<AppSegmentToggle> createState() => _AppSegmentToggleState();
}

class _AppSegmentToggleState extends State<AppSegmentToggle> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        if (widget.title != null)
          AppText(
            data: widget.title!,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: AppColors.black.withValues(alpha: 0.2),
            ),
          ),
          child: Row(
            children: List.generate(widget.options.length, (index) {
              final isSelected = _selectedIndex == index;
              return Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() => _selectedIndex = index);
                    widget.onChanged?.call(index);
                  },
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.brown : Colors.transparent,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    alignment: Alignment.center,
                    child: AppText(
                      data: widget.options[index],
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: isSelected ? Colors.white : AppColors.black,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
