import 'package:flutter/material.dart';
import 'package:myfin/model/pie_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget graphBar(data, title) {
  return SfCircularChart(
    // title: ChartTitle(text: title),
    legend: Legend(isVisible: true),
    series: <DoughnutSeries<PieData, String>>[
      DoughnutSeries<PieData, String>(
          explode: true,
          explodeIndex: 0,
          dataSource: data,
          xValueMapper: (PieData data, _) => data.xData,
          yValueMapper: (PieData data, _) => data.yData,
          dataLabelMapper: (PieData data, _) => data.text,
          dataLabelSettings: DataLabelSettings(isVisible: true))
    ],
  );
}
