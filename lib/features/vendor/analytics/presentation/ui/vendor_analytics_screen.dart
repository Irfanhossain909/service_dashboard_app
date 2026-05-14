import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/appbar/custom_appbar.dart';
import 'package:service_dashboard_app/features/vendor/analytics/presentation/widget/vendor_revenue_overview_chart.dart';
import 'package:service_dashboard_app/features/vendor/customer_management/presentation/widget/title_card.dart';

class VendorAnalyticsScreen extends StatefulWidget {
  const VendorAnalyticsScreen({super.key});

  @override
  State<VendorAnalyticsScreen> createState() => _VendorAnalyticsScreenState();
}

class _VendorAnalyticsScreenState extends State<VendorAnalyticsScreen> {
  RevenueOverviewPeriod _period = RevenueOverviewPeriod.yearly;

  static const List<String> _monthLabels = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jul',
    'aug',
    'sep',
    'oct',
    'nov',
    'dec',
  ];

  /// Sample series; replace with API / controller data.
  static const List<double> _sampleMonthly = [
    72, 55, 80, 45, 90, 62, 70, 48, 85, 60, 75, 88,
  ];

  @override
  Widget build(BuildContext context) {
    const chartMax = 100.0;

    return Scaffold(
      appBar: CustomAppbar(text: "Analytics"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          spacing: 12.h,
          children: [
            Row(
              spacing: 12.w,
              children: [
                Expanded(
                  child: TitleCard(title: "Total Revenue", value: "\$12000"),
                ),
                Expanded(
                  child: TitleCard(title: "Total Orders", value: "100"),
                ),
              ],
            ),
            Row(
              spacing: 12.w,
              children: [
                Expanded(
                  child: TitleCard(title: "Active Deliveries", value: "456"),
                ),
                Expanded(
                  child: TitleCard(title: "Total Products", value: "567"),
                ),
              ],
            ),
            VendorRevenueOverviewChart(
              chartTitle: 'Revenue Overview',
              dataPoints: _sampleMonthly,
              xAxisLabels: _monthLabels,
              maxValue: chartMax,
              selectedPeriod: _period,
              onPeriodChanged: (p) => setState(() => _period = p),
            ),
          ],
        ),
      ),
    );
  }
}
