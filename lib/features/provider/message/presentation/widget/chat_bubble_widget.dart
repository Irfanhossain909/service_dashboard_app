import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class ChatBubbleWidget extends StatelessWidget {
  final String message;
  final bool isSender;
  final String imageUrl;

  const ChatBubbleWidget({
    super.key,
    required this.message,
    required this.isSender,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isSender) ...[
            _buildAvatar(),
            SizedBox(width: 8.w),
          ],
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: isSender ? AppColors.brown : AppColors.offWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                  bottomLeft: isSender ? Radius.circular(20.r) : Radius.zero,
                  bottomRight: isSender ? Radius.zero : Radius.circular(20.r),
                ),
              ),
              child: Text(
                message,
                style: TextStyle(
                  color: isSender ? Colors.white : AppColors.black,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          if (isSender) ...[
            SizedBox(width: 8.w),
            _buildAvatar(),
          ],
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      radius: 12.r,
      backgroundColor: AppColors.offWhite,
      backgroundImage: imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
      child: imageUrl.isEmpty
          ? Icon(Icons.person, size: 16.sp, color: AppColors.brown)
          : null,
    );
  }
}
