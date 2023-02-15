import 'package:agino_client/application/DashboardController/dashbaordController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:intl/intl.dart';

import '../utils/chart_data.dart';
import 'custome_text_widget.dart';

import 'days.dart';
import 'months_date.dart';

class DrawGraph extends StatefulWidget {
  const DrawGraph({super.key});

  @override
  State<DrawGraph> createState() => _DrawGraphState();
}

class _DrawGraphState extends State<DrawGraph> {
  @override
  Widget build(BuildContext context) {
    
    var dashboardConroller = Get.find<DashboardController>();

    
    final List<ChartData> _chartData = [
      ChartData(DateTime(2015, 5, 1), 35),
      ChartData(DateTime(2015, 5, 2), 31),
      ChartData(DateTime(2015, 5, 3), 34),
      ChartData(DateTime(2015, 5, 4), 32),
      ChartData(DateTime(2015, 5, 5), 38),
      ChartData(DateTime(2015, 5, 6), 10),
      ChartData(DateTime(2015, 5, 7), 5),
      ChartData(DateTime(2015, 5, 8), 20),
    ];

    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 2),
            padding: const EdgeInsets.only(left: 10, right: 0),
            child: Days(),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 10),
            padding: const EdgeInsets.only(left: 10, right: 0),
            child: Months(),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: TextWidget(
              text: "*C",
              color: Color(0xFF979797),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          SfCartesianChart(
            margin: const EdgeInsets.only(left: 5, right: 10, bottom: 0),
            legend: Legend(
                isVisible: true,
                position: LegendPosition.bottom,
                iconHeight: 5,
                iconWidth: 5),
            series: <ChartSeries>[
              SplineSeries<ChartData, DateTime>(
                name: "Measured Temperature",
                dataSource: _chartData,
                // Type of spline
                splineType: SplineType.natural,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
              )
            ],
            primaryXAxis: DateTimeAxis(
                isVisible: false, edgeLabelPlacement: EdgeLabelPlacement.shift),
            primaryYAxis: NumericAxis(
                axisLine: AxisLine(color: Colors.white, width: 0.5)),
          ),
        ],
      ),
    );
  }
}

/**
 * Precipitation graph
 */
class PrecipitationGraph extends StatefulWidget {
  const PrecipitationGraph({super.key});

  @override
  State<PrecipitationGraph> createState() => _PrecipitationGraphState();
}

class _PrecipitationGraphState extends State<PrecipitationGraph> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> _chartData = [
      ChartData(DateTime(2015, 5, 1), 35),
      ChartData(DateTime(2015, 5, 2), 31),
      ChartData(DateTime(2015, 5, 3), 34),
      ChartData(DateTime(2015, 5, 4), 32),
      ChartData(DateTime(2015, 5, 5), 38),
      ChartData(DateTime(2015, 5, 6), 10),
      ChartData(DateTime(2015, 5, 7), 5),
      ChartData(DateTime(2015, 5, 8), 20),
    ];
    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 2),
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Days(),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 10),
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Months(),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: TextWidget(
              text: "*mm",
              color: Color(0xFF979797),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          SfCartesianChart(
            margin: const EdgeInsets.only(left: 5, right: 10, bottom: 0),
            legend: Legend(
                isVisible: true,
                position: LegendPosition.bottom,
                iconHeight: 5,
                iconWidth: 5),
            series: <ChartSeries>[
              ColumnSeries<ChartData, DateTime>(
                name: "Measured Precipitation",
                dataSource: _chartData,
                // Type of spline

                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
              )
            ],
            primaryXAxis: DateTimeAxis(
                isVisible: false, edgeLabelPlacement: EdgeLabelPlacement.shift),
            primaryYAxis: NumericAxis(
                axisLine: AxisLine(color: Colors.white, width: 0.5)),
          ),
        ],
      ),
    );
  }
}

class SnowGraph extends StatefulWidget {
  const SnowGraph({super.key});

  @override
  State<SnowGraph> createState() => _SnowGraphState();
}

class _SnowGraphState extends State<SnowGraph> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> _chartData = [
      ChartData(DateTime(2015, 5, 1), 35),
      ChartData(DateTime(2015, 5, 2), 31),
      ChartData(DateTime(2015, 5, 3), 34),
      ChartData(DateTime(2015, 5, 4), 32),
      ChartData(DateTime(2015, 5, 5), 38),
      ChartData(DateTime(2015, 5, 6), 10),
      ChartData(DateTime(2015, 5, 7), 5),
      ChartData(DateTime(2015, 5, 8), 20),
    ];
    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 2),
            padding: const EdgeInsets.only(left: 10, right: 0),
            child: Days(),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 10),
            padding: const EdgeInsets.only(left: 10, right: 0),
            child: Months(),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: TextWidget(
              text: "cm",
              color: Color(0xFF979797),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          SfCartesianChart(
            margin: const EdgeInsets.only(left: 5, right: 10, bottom: 0),
            legend: Legend(
                isVisible: true,
                position: LegendPosition.bottom,
                iconHeight: 5,
                iconWidth: 5),
            series: <ChartSeries>[
              ColumnSeries<ChartData, DateTime>(
                name: "Snow Depth",
                dataSource: _chartData,
                // Type of spline

                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
              )
            ],
            primaryXAxis: DateTimeAxis(
                isVisible: false, edgeLabelPlacement: EdgeLabelPlacement.shift),
            primaryYAxis: NumericAxis(
                axisLine: AxisLine(color: Colors.white, width: 0.5)),
          ),
        ],
      ),
    );
  }
}

class WindGraph extends StatefulWidget {
  const WindGraph({super.key});

  @override
  State<WindGraph> createState() => _WindGraphState();
}

class _WindGraphState extends State<WindGraph> {
  // late List<ChartData> _chartData;

  // @override
  // void initState() {
  //   _chartData = ChartData.getChartData();

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(DateTime(2015, 5, 1), 35),
      ChartData(DateTime(2015, 5, 2), 31),
      ChartData(DateTime(2015, 5, 3), 34),
      ChartData(DateTime(2015, 5, 4), 32),
      ChartData(DateTime(2015, 5, 5), 38),
      ChartData(DateTime(2015, 5, 6), 10),
      ChartData(DateTime(2015, 5, 7), 5),
      ChartData(DateTime(2015, 5, 8), 20),
    ];
    return Container(
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 2),
            padding: const EdgeInsets.only(left: 10, right: 0),
            child: Days(),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 10),
            padding: const EdgeInsets.only(left: 10, right: 0),
            child: Months(),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 20),
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: TextWidget(
              text: "m/s",
              color: Color(0xFF979797),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          SfCartesianChart(
            margin: const EdgeInsets.only(left: 5, right: 10, bottom: 0),
            legend: Legend(
                isVisible: true,
                position: LegendPosition.bottom,
                iconHeight: 5,
                iconWidth: 5),
            series: <ChartSeries<ChartData, DateTime>>[
              SplineSeries<ChartData, DateTime>(
                name: "Max Gust",
                dataSource: chartData,
                // Type of spline
                splineType: SplineType.natural,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
              ),
              SplineSeries<ChartData, DateTime>(
                name: "Average Wind Speed",
                dataSource: chartData,
                // Type of spline
                splineType: SplineType.natural,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y! + 5,
              ),
            ],
            primaryXAxis: DateTimeAxis(
                isVisible: false, edgeLabelPlacement: EdgeLabelPlacement.shift),
            primaryYAxis: NumericAxis(
                axisLine: AxisLine(color: Colors.white, width: 0.5)),
          ),
        ],
      ),
    );
  }
}
