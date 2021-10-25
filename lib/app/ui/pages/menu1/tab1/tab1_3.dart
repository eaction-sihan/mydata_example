import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


class Tab1_3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<_PieData> data = [
      _PieData('Jan', 35, '1'),
      _PieData('Feb', 28, '2'),
      _PieData('Mar', 34, '3'),
      _PieData('Apr', 32, '4'),
      _PieData('May', 40, '5')
    ];

    return Center(
        child:SfCircularChart(
            title: ChartTitle(text: 'Sales by sales person'),
            legend: Legend(isVisible: true),
            series: <PieSeries<_PieData, String>>[
              PieSeries<_PieData, String>(
                  explode: true,
                  explodeIndex: 0,
                  dataSource: data,
                  xValueMapper: (_PieData data, _) => data.xData,
                  yValueMapper: (_PieData data, _) => data.yData,
                  dataLabelMapper: (_PieData data, _) => data.text,
                  dataLabelSettings: DataLabelSettings(isVisible: true)),
            ]
        )
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, this.text);
  final String xData;
  final num yData;
  final String text;
}