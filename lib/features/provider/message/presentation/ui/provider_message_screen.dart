import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/route/app_routes.dart';
import 'package:service_dashboard_app/features/provider/dashboard/presentation/ui/provider_dashboard_screen.dart';
import 'package:service_dashboard_app/features/provider/message/presentation/controller/provider_message_controller.dart';
import 'package:service_dashboard_app/features/provider/message/presentation/widget/chat_list_item.dart';
import 'package:service_dashboard_app/features/provider/message/presentation/widget/provider_chat_search_bar.dart';

class ProviderMessageScreen extends StatelessWidget {
  const ProviderMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProviderMessageController());

    return Scaffold(
      appBar: AppBar(
        title: AppText(
          data: "Messages",
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      drawer: const ProviderDrawer(),
      body: Column(
        children: [
          const ProviderChatSearchBar(),
          SizedBox(height: 8.h),
          Expanded(
            child: ListView(
              children: [
                ChatListItem(
                  name: "Nora Larsen",
                  lastMessage: "Hey! How's it going?",
                  time: "04:04AM",
                  unreadCount: 3,
                  isOnline: true,
                  imageUrl: "",
                  onTap: () => _openChat("Nora Larsen", true),
                ),
                ChatListItem(
                  name: "Eliot Graves",
                  lastMessage: "Just wrapped up the project, feeling great!",
                  time: "04:10AM",
                  unreadCount: 4,
                  isOnline: false,
                  imageUrl: "",
                  onTap: () => _openChat("Eliot Graves", false),
                ),
                ChatListItem(
                  name: "Maya Chen",
                  lastMessage: "Can you send me those files?",
                  time: "04:15AM",
                  unreadCount: 5,
                  isOnline: true,
                  imageUrl: "",
                  onTap: () => _openChat("Maya Chen", true),
                ),
                ChatListItem(
                  name: "Julian Park",
                  lastMessage: "Lunch at noon?",
                  time: "04:22AM",
                  unreadCount: 6,
                  isOnline: false,
                  imageUrl: "",
                  onTap: () => _openChat("Julian Park", false),
                ),
                ChatListItem(
                  name: "Sofia Ramirez",
                  lastMessage: "Got the tickets for the concert!",
                  time: "04:30AM",
                  unreadCount: 7,
                  isOnline: true,
                  imageUrl: "",
                  onTap: () => _openChat("Sofia Ramirez", true),
                ),
                ChatListItem(
                  name: "Liam O'Neil",
                  lastMessage: "Running late, be there soon.",
                  time: "04:35AM",
                  unreadCount: 8,
                  isOnline: true,
                  imageUrl: "",
                  onTap: () => _openChat("Liam O'Neil", true),
                ),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _openChat(String userName, bool isOnline) {
    Get.toNamed(
      AppRoutes.instance.providerChatScreen,
      arguments: {
        'userName': userName,
        'isOnline': isOnline,
        'imageUrl': '',
      },
    );
  }
}
