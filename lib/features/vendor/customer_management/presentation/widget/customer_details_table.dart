import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class CustomerDetailsTable extends StatelessWidget {
  final List<CustomerDetailsTableItemModel> items;

  const CustomerDetailsTable({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      child: Table(
        columnWidths: {
          0: FixedColumnWidth(80.w),
          1: FixedColumnWidth(100.w),
          2: FlexColumnWidth(100),
          3: FixedColumnWidth(77.w),
        },

        children: [
          /// Header
          TableRow(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8.r),
            ),
            children: [
              _headerText("Order ID"),
              _headerText("Type"),
              _headerText("Ammount"),
              _headerText("Status"),
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
                _cellText(items[index].orderID),
                _cellText(items[index].type),
                // _cellText(items[index].ammount),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color: AppColors.nevColor.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: AppText(
                    data: items[index].ammount,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color: items[index].status == "Pending"
                        ? Colors.amber
                        : AppColors.green,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: AppText(
                    data: items[index].status,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
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

class CustomerDetailsTableItemModel {
  final String orderID;
  final String type;
  final String ammount;
  final String status;

  CustomerDetailsTableItemModel({
    required this.orderID,
    required this.type,
    required this.ammount,
    required this.status,
  });
}
