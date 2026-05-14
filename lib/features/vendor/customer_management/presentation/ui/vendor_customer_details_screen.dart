import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/widget/customer_details_table.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/widget/customer_profile.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/widget/title_card.dart';

class VendorCustomerDetailsScreen extends StatelessWidget {
  const VendorCustomerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Customer Details"),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12.h,
            children: [
              CustomerProfile(),
              Row(
                spacing: 12.w,
                children: [
                  Expanded(
                    child: TitleCard(title: "Total Spend", value: "\$1000"),
                  ),
                  Expanded(
                    child: TitleCard(title: "Total Orders", value: "100"),
                  ),
                ],
              ),
              AppText(
                data: "Order listing",
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
              CustomerDetailsTable(
                items: [
                  CustomerDetailsTableItemModel(
                    orderID: "12345",
                    type: "Payment",
                    ammount: "\$100",
                    status: "Pending",
                  ),
                  CustomerDetailsTableItemModel(
                    orderID: "9023",
                    type: "Payment",
                    ammount: "\$100",
                    status: "Pending",
                  ),
                  CustomerDetailsTableItemModel(
                    orderID: "9023",
                    type: "Payment",
                    ammount: "\$100",
                    status: "Pending",
                  ),
                  CustomerDetailsTableItemModel(
                    orderID: "9023",
                    type: "Payment",
                    ammount: "\$100",
                    status: "Pending",
                  ),
                  CustomerDetailsTableItemModel(
                    orderID: "9023",
                    type: "Payment",
                    ammount: "\$100",
                    status: "Pending",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
