import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class ServiceScreenTable extends StatelessWidget {
  final List<ServiceScreenTableItemModel> items;

  const ServiceScreenTable({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      child: Table(
        columnWidths: {
          // Name -> biggest
          0: FlexColumnWidth(2.5),

          // Middle two -> smaller & equal
          1: FlexColumnWidth(1.5),
          2: FlexColumnWidth(1.5),

          // Action -> smaller than name but bigger than middle দুইটা
          3: FlexColumnWidth(2),
        },

        children: [
          /// Header
          TableRow(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8.r),
            ),
            children: [
              _headerText("Service Name"),
              _headerText("Price"),
              _headerText("Status"),
              _headerText("Action"),
            ],
          ),

          /// Data Rows
          ...List.generate(
            items.length,
            (index) => TableRow(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.nevColor, width: 1),
                ),
              ),
              children: [
                _cellText(items[index].serviceName),
                _cellText(items[index].price),
                _cellText(items[index].status),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 10.w,
                  ),
                  child: Row(
                    spacing: 8.w,
                    children: [
                      InkWell(
                        onTap: items[index].onView,
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 14.r,
                          color: Colors.black54,
                        ),
                      ),
                      InkWell(
                        onTap: items[index].onEdit,
                        child: Icon(
                          Icons.edit_outlined,
                          size: 14.r,
                          color: Colors.black54,
                        ),
                      ),
                      InkWell(
                        onTap: items[index].onDelete,
                        child: Icon(
                          Icons.delete_outline,
                          size: 14.r,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 8.w),
      child: AppText(
        data: text,
        fontSize: 12.sp,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }

  Widget _cellText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 8.w),
      child: AppText(
        data: text,
        fontSize: 12.sp,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
}

class ServiceScreenTableItemModel {
  final String serviceName;
  final String price;
  final String status;

  final void Function() onView;
  final void Function() onEdit;
  final void Function() onDelete;

  ServiceScreenTableItemModel({
    required this.serviceName,
    required this.price,
    required this.status,
    required this.onView,
    required this.onEdit,
    required this.onDelete,
  });
}
