import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class AppCheckboxTile extends StatefulWidget {
  final String title;
  final bool? initialValue;
  final double? boxSize;
  final Function(bool value)? onChanged;

  const AppCheckboxTile({
    super.key,
    required this.title,
    this.initialValue,
    this.boxSize,
    this.onChanged,
  });

  @override
  State<AppCheckboxTile> createState() => _AppCheckboxTileState();
}

class _AppCheckboxTileState extends State<AppCheckboxTile> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();

    /// default false
    isSelected = widget.initialValue ?? false;
  }

  void toggleCheckbox() {
    setState(() {
      isSelected = !isSelected;
    });

    widget.onChanged?.call(isSelected);
  }

  @override
  Widget build(BuildContext context) {
    final double size = widget.boxSize ?? 16.w;

    return InkWell(
      borderRadius: BorderRadius.circular(6.r),
      onTap: toggleCheckbox,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: size + 12.w, // checkbox + fixed gap
            child: Align(
              alignment: Alignment.centerLeft,
              child: Transform.scale(
                scale: size / 16,
                child: Checkbox(
                  value: isSelected,
                  onChanged: (_) => toggleCheckbox(),
                  activeColor: Colors.brown,
                  checkColor: Colors.white,

                  /// always black border
                  side: BorderSide(
                    color: Colors.black.withValues(alpha: 0.5),
                    width: 1.5,
                  ),

                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                  visualDensity: VisualDensity.compact,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
            ),
          ),

          AppText(
            data: widget.title,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
