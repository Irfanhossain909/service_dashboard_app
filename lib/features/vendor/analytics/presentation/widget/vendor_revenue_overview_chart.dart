import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_dashboard_app/core/component/app_text/app_text.dart';
import 'package:service_dashboard_app/core/const/app_color.dart';

/// Period options for the revenue chart filter (Today / Weekly / Monthly / Yearly).
enum RevenueOverviewPeriod {
  today,
  weekly,
  monthly,
  yearly,
}

extension RevenueOverviewPeriodX on RevenueOverviewPeriod {
  String get label => switch (this) {
        RevenueOverviewPeriod.today => 'Today',
        RevenueOverviewPeriod.weekly => 'Weekly',
        RevenueOverviewPeriod.monthly => 'Monthly',
        RevenueOverviewPeriod.yearly => 'Yearly',
      };
}

/// Revenue overview bar chart card: dynamic data, 6 Y-axis steps from [maxValue],
/// configurable X labels, and period filter in the header.
class VendorRevenueOverviewChart extends StatefulWidget {
  const VendorRevenueOverviewChart({
    super.key,
    this.chartTitle = 'Revenue Overview',
    required this.dataPoints,
    required this.xAxisLabels,
    required this.maxValue,
    required this.selectedPeriod,
    this.onPeriodChanged,
    this.barColor = const Color(0xFFC4A484),
    this.barTopColor = const Color(0xFF8B6B47),
    this.accentLineColor = AppColors.brown,
    this.borderColor = AppColors.nevColor,
    this.formatYAxis,
  });

  /// Card heading (e.g. "Revenue Overview").
  final String chartTitle;

  /// Bar heights; values are interpreted against [maxValue] (0 … maxValue).
  final List<double> dataPoints;

  /// Bottom labels (e.g. months); should align 1:1 with [dataPoints]; if lengths
  /// differ, the chart uses the shorter length.
  final List<String> xAxisLabels;

  /// Y-axis top; chart draws **6** tick marks from `0` to [maxValue] in 5 equal steps.
  final double maxValue;

  /// Currently selected filter label source.
  final RevenueOverviewPeriod selectedPeriod;

  /// Called when the user picks Today / Weekly / Monthly / Yearly.
  final ValueChanged<RevenueOverviewPeriod>? onPeriodChanged;

  final Color barColor;
  final Color barTopColor;
  final Color accentLineColor;
  final Color borderColor;

  /// Optional Y-axis label formatter; defaults to compact numeric strings.
  final String Function(double value)? formatYAxis;

  int get _count => math.min(dataPoints.length, xAxisLabels.length);

  @override
  State<VendorRevenueOverviewChart> createState() =>
      _VendorRevenueOverviewChartState();
}

class _VendorRevenueOverviewChartState extends State<VendorRevenueOverviewChart> {
  final GlobalKey _filterKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final safeMax = widget.maxValue <= 0 ? 1.0 : widget.maxValue;

    return Container(
      padding: EdgeInsets.fromLTRB(16.r, 16.r, 16.r, 12.r),
      decoration: BoxDecoration(
        color: AppColors.backgrounColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: widget.borderColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      data: widget.chartTitle,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                    SizedBox(height: 6.h),
                    Container(
                      width: 28.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: widget.accentLineColor,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                  ],
                ),
              ),
              _PeriodFilterChip(
                filterKey: _filterKey,
                label: widget.selectedPeriod.label,
                onTap: widget.onPeriodChanged == null
                    ? null
                    : () => _showPeriodMenu(context),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 200.h,
            child: _RevenueBarChart(
              dataPoints:
                  widget.dataPoints.take(widget._count).toList(growable: false),
              xLabels: widget.xAxisLabels
                  .take(widget._count)
                  .toList(growable: false),
              maxValue: safeMax,
              barColor: widget.barColor,
              barTopColor: widget.barTopColor,
              formatYAxis: widget.formatYAxis ?? _defaultFormatY,
            ),
          ),
        ],
      ),
    );
  }

  String _defaultFormatY(double v) {
    if (v >= 1000) return '${(v / 1000).toStringAsFixed(v % 1000 == 0 ? 0 : 1)}k';
    if (v == v.roundToDouble()) return v.round().toString();
    return v.toStringAsFixed(1);
  }

  Future<void> _showPeriodMenu(BuildContext context) async {
    final chosen = await showMenu<RevenueOverviewPeriod>(
      context: context,
      position: _menuPosition(context),
      items: [
        for (final p in RevenueOverviewPeriod.values)
          PopupMenuItem<RevenueOverviewPeriod>(
            value: p,
            child: AppText(
              data: p.label,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
      ],
    );
    if (chosen != null) widget.onPeriodChanged?.call(chosen);
  }

  RelativeRect _menuPosition(BuildContext context) {
    final box = _filterKey.currentContext?.findRenderObject() as RenderBox?;
    final overlay = Navigator.of(context)
        .overlay!
        .context
        .findRenderObject()! as RenderBox;
    if (box == null || !box.hasSize) {
      return RelativeRect.fromLTRB(100, 100, 0, 0);
    }
    final topLeft = box.localToGlobal(Offset.zero, ancestor: overlay);
    final rect = Rect.fromLTWH(
      topLeft.dx,
      topLeft.dy,
      box.size.width,
      box.size.height,
    );
    return RelativeRect.fromRect(rect, Offset.zero & overlay.size);
  }
}

class _PeriodFilterChip extends StatelessWidget {
  const _PeriodFilterChip({
    required this.filterKey,
    required this.label,
    this.onTap,
  });

  final GlobalKey filterKey;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      key: filterKey,
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                data: label,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.black.withValues(alpha: 0.75),
              ),
              SizedBox(width: 6.w),
              Icon(
                Icons.filter_list,
                size: 18.sp,
                color: AppColors.black.withValues(alpha: 0.55),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RevenueBarChart extends StatelessWidget {
  const _RevenueBarChart({
    required this.dataPoints,
    required this.xLabels,
    required this.maxValue,
    required this.barColor,
    required this.barTopColor,
    required this.formatYAxis,
  });

  final List<double> dataPoints;
  final List<String> xLabels;
  final double maxValue;
  final Color barColor;
  final Color barTopColor;
  final String Function(double value) formatYAxis;

  static const int _yTickCount = 6;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final yLabels = List<String>.generate(_yTickCount, (i) {
          final t = i / (_yTickCount - 1);
          return formatYAxis(maxValue * t);
        });

        final yPainter = TextPainter(
          textDirection: TextDirection.ltr,
          text: TextSpan(
            style: TextStyle(
              fontSize: 10.sp,
              color: AppColors.black.withValues(alpha: 0.45),
              height: 1,
            ),
          ),
        );

        double yLabelWidth = 0;
        for (final y in yLabels) {
          yPainter.text = TextSpan(text: y, style: yPainter.text!.style);
          yPainter.layout();
          yLabelWidth = math.max(yLabelWidth, yPainter.width);
        }

        final leftPad = yLabelWidth + 8.w;
        final bottomPad = 22.h;
        final topPad = 4.h;
        final rightPad = 4.w;

        return CustomPaint(
          painter: _RevenueChartPainter(
            dataPoints: dataPoints,
            xLabels: xLabels,
            maxValue: maxValue,
            yLabels: yLabels,
            barColor: barColor,
            barTopColor: barTopColor,
            leftPadding: leftPad,
            bottomPadding: bottomPad,
            topPadding: topPad,
            rightPadding: rightPad,
            labelStyle: TextStyle(
              fontSize: 10.sp,
              color: AppColors.black.withValues(alpha: 0.45),
              height: 1,
            ),
            xLabelStyle: TextStyle(
              fontSize: 9.sp,
              color: AppColors.black.withValues(alpha: 0.5),
              height: 1,
            ),
          ),
          child: const SizedBox.expand(),
        );
      },
    );
  }
}

class _RevenueChartPainter extends CustomPainter {
  _RevenueChartPainter({
    required this.dataPoints,
    required this.xLabels,
    required this.maxValue,
    required this.yLabels,
    required this.barColor,
    required this.barTopColor,
    required this.leftPadding,
    required this.bottomPadding,
    required this.topPadding,
    required this.rightPadding,
    required this.labelStyle,
    required this.xLabelStyle,
  });

  final List<double> dataPoints;
  final List<String> xLabels;
  final double maxValue;
  final List<String> yLabels;
  final Color barColor;
  final Color barTopColor;
  final double leftPadding;
  final double bottomPadding;
  final double topPadding;
  final double rightPadding;
  final TextStyle labelStyle;
  final TextStyle xLabelStyle;

  @override
  void paint(Canvas canvas, Size size) {
    final chartRect = Rect.fromLTWH(
      leftPadding,
      topPadding,
      size.width - leftPadding - rightPadding,
      size.height - bottomPadding - topPadding,
    );

    final gridPaint = Paint()
      ..color = AppColors.nevColor.withValues(alpha: 0.65)
      ..strokeWidth = 1;

    final n = dataPoints.length;
    if (n == 0) return;

    // Horizontal dashed grid (6 lines)
    for (var i = 0; i < yLabels.length; i++) {
      final t = i / (yLabels.length - 1);
      final y = chartRect.bottom - t * chartRect.height;
      _drawDashLine(
        canvas,
        Offset(chartRect.left, y),
        Offset(chartRect.right, y),
        gridPaint,
      );

      final tp = TextPainter(
        text: TextSpan(text: yLabels[i], style: labelStyle),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(
        canvas,
        Offset(
          chartRect.left - tp.width - 6,
          y - tp.height / 2,
        ),
      );
    }

    // Vertical dashed grid per column
    final slotW = chartRect.width / n;
    for (var i = 0; i <= n; i++) {
      final x = chartRect.left + i * slotW;
      _drawDashLine(
        canvas,
        Offset(x, chartRect.top),
        Offset(x, chartRect.bottom),
        gridPaint,
      );
    }

    final barPaint = Paint()..color = barColor;
    final capPaint = Paint()..color = barTopColor;

    for (var i = 0; i < n; i++) {
      final v = dataPoints[i].clamp(0.0, maxValue);
      final frac = maxValue <= 0 ? 0.0 : v / maxValue;
      final barH = frac * chartRect.height;
      final cx = chartRect.left + (i + 0.5) * slotW;
      final barW = math.max(3.0, slotW * 0.22);
      final left = cx - barW / 2;
      final top = chartRect.bottom - barH;

      if (barH > 0) {
        final rrect = RRect.fromRectAndCorners(
          Rect.fromLTWH(left, top, barW, barH),
          topLeft: const Radius.circular(1),
          topRight: const Radius.circular(1),
        );
        canvas.drawRRect(rrect, barPaint);

        // 3D-style cap (diamond / prism)
        final capH = math.min(5.0, barH * 0.15);
        final capW = barW * 1.35;
        final capPath = Path()
          ..moveTo(cx - capW / 2, top)
          ..lineTo(cx, top - capH)
          ..lineTo(cx + capW / 2, top)
          ..lineTo(cx, top + capH * 0.35)
          ..close();
        canvas.drawPath(capPath, capPaint);
      }

      final label = i < xLabels.length ? xLabels[i] : '';
      final xtp = TextPainter(
        text: TextSpan(text: label, style: xLabelStyle),
        textDirection: TextDirection.ltr,
        maxLines: 1,
        ellipsis: '…',
      )..layout(maxWidth: slotW);
      xtp.paint(
        canvas,
        Offset(
          cx - xtp.width / 2,
          chartRect.bottom + 6,
        ),
      );
    }
  }

  void _drawDashLine(Canvas canvas, Offset p1, Offset p2, Paint paint) {
    const dash = 4.0;
    const gap = 3.0;
    final d = p2 - p1;
    final len = d.distance;
    if (len == 0) return;
    final dir = d / len;
    var dist = 0.0;
    var draw = true;
    while (dist < len) {
      final seg = math.min(dash, len - dist);
      if (draw) {
        final a = p1 + dir * dist;
        final b = p1 + dir * (dist + seg);
        canvas.drawLine(a, b, paint);
      }
      dist += draw ? dash : gap;
      draw = !draw;
    }
  }

  @override
  bool shouldRepaint(covariant _RevenueChartPainter oldDelegate) {
    return oldDelegate.dataPoints != dataPoints ||
        oldDelegate.xLabels != xLabels ||
        oldDelegate.maxValue != maxValue ||
        oldDelegate.yLabels != yLabels ||
        oldDelegate.barColor != barColor ||
        oldDelegate.barTopColor != barTopColor;
  }
}
