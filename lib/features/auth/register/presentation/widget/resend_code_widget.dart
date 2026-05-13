import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class ResendCodeWidget extends StatelessWidget {
  final VoidCallback onResend;

  const ResendCodeWidget({super.key, required this.onResend});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Didn't receive the code? ",
          style: TextStyle(fontSize: 14.sp, color: Colors.black38),
        ),
        GestureDetector(
          onTap: onResend,
          child: Text(
            "Resend",
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
