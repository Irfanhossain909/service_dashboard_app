import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_input/app_input_widget_two.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';
import 'package:service_dashboard_app/features/vendor/earn_and_payout/presentation/widget/earn_card.dart';
import 'package:service_dashboard_app/features/vendor/earn_and_payout/presentation/widget/earn_table.dart';
import 'package:service_dashboard_app/features/vendor/earn_and_payout/presentation/widget/payment_method_card.dart';
import 'package:service_dashboard_app/features/vendor/earn_and_payout/presentation/widget/withdraw_funds_card.dart';

class ProviderEarnAndPayoutScreen extends StatelessWidget {
  const ProviderEarnAndPayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(text: "Earn And Payout"),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          spacing: 12.h,
          children: [
            EarnCard(),
            const WithdrawFundsCard(),
            const PaymentMethodCard(),

            AppInputWidgetTwo(
              hintText: "Search Transaction ID",
              prefix: Icon(
                Icons.search,
                color: AppColors.black.withValues(alpha: 0.4),
              ),
            ),
            EarnTable(
              items: [
                TablePayoutItemModel(
                  sl: "1",
                  title: "Total Earnings",
                  amount: "\$1000",
                  onView: () {},
                ),
                TablePayoutItemModel(
                  sl: "2",
                  title: "Total Earnings",
                  amount: "\$1000",
                  onView: () {},
                ),
                TablePayoutItemModel(
                  sl: "3",
                  title: "Total Earnings",
                  amount: "\$1000",
                  onView: () {},
                ),
                TablePayoutItemModel(
                  sl: "4",
                  title: "Total Earnings",
                  amount: "\$1000",
                  onView: () {},
                ),
                TablePayoutItemModel(
                  sl: "5",
                  title: "Total Earnings",
                  amount: "\$1000",
                  onView: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
