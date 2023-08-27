import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LineChartScreen(),
    );
  }
}

class LineChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Range Line Chart Example')),
      body: Center(
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 7,
            minY: 0,
            maxY: 8,
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(show: false),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: const Color(0xff37434d), width: 1),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 2),
                  FlSpot(1, 4),
                  FlSpot(2, 3),
                  FlSpot(3, 6),
                  FlSpot(4, 5),
                  FlSpot(5, 7),
                  FlSpot(6, 4),
                ],
                isCurved: true,
                color: Colors.blue,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(show: false),
              ),
              LineChartBarData(
                spots: [
                  FlSpot(0, 1),
                  FlSpot(1, 3),
                  FlSpot(2, 2),
                  FlSpot(3, 5),
                  FlSpot(4, 4),
                  FlSpot(5, 6),
                  FlSpot(6, 3),
                ],
                isCurved: true,
                color: Colors.red,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(show: false),
              ),
              LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(1, 4.5),
                  FlSpot(2, 3.5),
                  FlSpot(3, 6.5),
                  FlSpot(4, 5.5),
                  FlSpot(5, 7.5),
                  FlSpot(6, 4.5),
                ],
                isCurved: true,
                color: Colors.transparent,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.green.withOpacity(0.3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
