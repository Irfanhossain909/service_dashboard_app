import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final double thickness;
  final Color dividerColor;
  final TextStyle? textStyle;

  const DividerWithText({
    super.key,
    this.text = "Or continue with",
    this.thickness = 1,
    this.dividerColor = Colors.grey,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(thickness: thickness, color: Colors.grey.shade300),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: AppText(
            data: text,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade300,
          ),
        ),

        Expanded(
          child: Divider(thickness: thickness, color: Colors.grey.shade300),
        ),

        
      ],
    );
  }
}
