import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';

/// Example Usage:
///
/// RoleSelectionWidget(
///   title: "I am a",
///   items: [
///     RoleItem(
///       displayValue: "Vendor",
///       returnValue: "vendor",
///     ),
///     RoleItem(
///       displayValue: "Customer",
///       returnValue: "customer",
///     ),
///   ],
///   onChanged: (value) {
///     print(value);
///   },
/// ),

class RoleItem {
  final String displayValue;
  final dynamic returnValue;

  RoleItem({required this.displayValue, required this.returnValue});
}

class RoleSelectionWidget extends StatefulWidget {
  final String title;
  final List<RoleItem> items;
  final Function(dynamic value)? onChanged;
  final dynamic initialValue;

  const RoleSelectionWidget({
    super.key,
    required this.title,
    required this.items,
    this.onChanged,
    this.initialValue,
  });

  @override
  State<RoleSelectionWidget> createState() => _RoleSelectionWidgetState();
}

class _RoleSelectionWidgetState extends State<RoleSelectionWidget> {
  late dynamic selectedValue;

  @override
  void initState() {
    super.initState();

    selectedValue = widget.initialValue ?? widget.items.first.returnValue;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onChanged?.call(selectedValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = widget.items.indexWhere(
      (e) => e.returnValue == selectedValue,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          data: widget.title,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),

        SizedBox(height: 8.h),

        LayoutBuilder(
          builder: (context, constraints) {
            final itemWidth =
                (constraints.maxWidth - 8.w) / widget.items.length;

            return Container(
              padding: EdgeInsets.all(4.w),
              height: 56.h,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Stack(
                children: [
                  /// Smooth Sliding Background
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    left: itemWidth * selectedIndex,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: itemWidth,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8B5E3C),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),

                  /// Items
                  Row(
                    children: List.generate(widget.items.length, (index) {
                      final item = widget.items[index];

                      final isSelected = selectedValue == item.returnValue;

                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedValue = item.returnValue;
                            });

                            widget.onChanged?.call(item.returnValue);
                          },
                          behavior: HitTestBehavior.translucent,
                          child: Center(
                            child: AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: isSelected
                                    ? FontWeight.w700
                                    : FontWeight.w400,
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                              child: Text(item.displayValue),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
