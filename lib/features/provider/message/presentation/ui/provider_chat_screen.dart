import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/provider/message/presentation/controller/provider_message_controller.dart';
import 'package:service_dashboard_app/features/provider/message/presentation/widget/chat_bubble_widget.dart';
import 'package:service_dashboard_app/features/provider/message/presentation/widget/chat_input_field.dart';

class ProviderChatScreen extends StatelessWidget {
  const ProviderChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>? ?? {};
    final String userName = args['userName'] as String? ?? 'User';
    final bool isOnline = args['isOnline'] as bool? ?? false;
    final String imageUrl = args['imageUrl'] as String? ?? '';

    Get.put(ProviderMessageController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: AppColors.black, size: 20.r),
          onPressed: () => Get.back(),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 16.r,
              backgroundColor: AppColors.offWhite,
              backgroundImage:
                  imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
              child: imageUrl.isEmpty
                  ? Icon(Icons.person, color: AppColors.brown, size: 18.r)
                  : null,
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  data: userName,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
                Row(
                  children: [
                    Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                        color: isOnline ? AppColors.green : AppColors.nevColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    AppText(
                      data: isOnline ? "Online" : "Offline",
                      fontSize: 12.sp,
                      color: AppColors.nevColor,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              children: [
                Center(
                  child: AppText(
                    data: "09:41 AM",
                    fontSize: 12.sp,
                    color: AppColors.nevColor,
                  ),
                ),
                SizedBox(height: 16.h),
                const ChatBubbleWidget(
                  message: "Hi, Mandy",
                  isSender: true,
                  imageUrl: "",
                ),
                const ChatBubbleWidget(
                  message: "I've tried the app",
                  isSender: true,
                  imageUrl: "",
                ),
                const ChatBubbleWidget(
                  message: "Really?",
                  isSender: false,
                  imageUrl: "",
                ),
                const ChatBubbleWidget(
                  message: "Yeah, It's really good!",
                  isSender: true,
                  imageUrl: "",
                ),
                const ChatBubbleWidget(
                  message: "T",
                  isSender: false,
                  imageUrl: "",
                ),
              ],
            ),
          ),
          const ChatInputField(),
        ],
      ),
    );
  }
}
