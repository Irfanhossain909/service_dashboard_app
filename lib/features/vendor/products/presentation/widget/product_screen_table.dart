import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_assets.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

class ProductScreenTable extends StatelessWidget {
  final List<ProductTableItemModel> items;

  const ProductScreenTable({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      child: Table(
        columnWidths: {
          0: FixedColumnWidth(80.w),
          1: FixedColumnWidth(100.w),
          2: FixedColumnWidth(100.w),
          3: FixedColumnWidth(80.w),
        },

        children: [
          /// Header
          TableRow(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8.r),
            ),
            children: [
              _headerText("Name"),
              _headerText("Price"),
              _headerText("Stock"),
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
                _cellText(items[index].name),
                _cellText(items[index].price),
                _cellText(items[index].stock),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 10.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        child: SvgPicture.asset(
                          AppAssets.editIcon,
                          width: 11.r,
                          height: 11.r,
                        ),
                      ),

                      InkWell(
                        onTap: items[index].onDelete,
                        child: Icon(
                          Icons.delete_outline,
                          size: 14.r,
                          color: Colors.red,
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

class ProductTableItemModel {
  final String name;
  final String price;
  final String stock;

  final VoidCallback? onView;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  ProductTableItemModel({
    required this.name,
    required this.price,
    required this.stock,
    this.onView,
    this.onEdit,
    this.onDelete,
  });
}
