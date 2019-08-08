import 'dart:async';

import 'package:stock_market/src/chart/base/base_chart/base_chart.dart';
import 'package:stock_market/src/chart/base/base_chart/base_chart_data.dart';
import 'package:stock_market/src/chart/base/base_chart/base_chart_painter.dart';
import 'package:stock_market/src/chart/base/base_chart/touch_input.dart';

import 'pie_chart_data.dart';
import 'pie_chart_painter.dart';

class PieChart extends BaseChart {
  final PieChartData pieChartData;

  PieChart(
    this.pieChartData,
    );

  @override
  BaseChartPainter painter({FlTouchInputNotifier touchInputNotifier, StreamSink<BaseTouchResponse> touchResponseSink}) {
    return PieChartPainter(pieChartData, touchInputNotifier, touchResponseSink);
  }

  @override
  BaseChartData getData() => pieChartData;

}
