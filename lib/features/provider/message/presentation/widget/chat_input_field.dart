import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class ChatInputField extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onSend;

  const ChatInputField({
    super.key,
    this.controller,
    this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.backgrounColor,
        border: Border(top: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.nevColor),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(Icons.add, color: AppColors.brown, size: 20.sp),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: SizedBox(
              height: 48.h,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Type your message",
                  hintStyle: TextStyle(color: AppColors.nevColor, fontSize: 14.sp),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.r),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.r),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.r),
                    borderSide: const BorderSide(color: AppColors.brown),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(4.w),
                    child: InkWell(
                      onTap: onSend,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.brown,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.send, color: Colors.white, size: 16.sp),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
