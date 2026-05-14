import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class CustomerManagementTable extends StatelessWidget {
  final List<CustomerManagementTableItemModel> items;

  const CustomerManagementTable({super.key, required this.items});

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
          3: FixedColumnWidth(55.w),
        },

        children: [
          /// Header
          TableRow(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8.r),
            ),
            children: [
              _headerText("Customer"),
              _headerText("Country"),
              _headerText("Total Spend"),
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
                _cellText(items[index].customer),
                _cellText(items[index].country),
                _cellText(items[index].totalSpend),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 10.w,
                  ),
                  child: InkWell(
                    onTap: items[index].onView,
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      size: 14.r,
                      color: Colors.black54,
                    ),
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

class CustomerManagementTableItemModel {
  final String customer;
  final String country;
  final String totalSpend;

  final VoidCallback? onView;

  CustomerManagementTableItemModel({
    required this.customer,
    required this.country,
    required this.totalSpend,
    this.onView,
  });
}
