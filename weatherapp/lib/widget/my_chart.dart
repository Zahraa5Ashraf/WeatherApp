import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weatherapp/model/forcastfive.dart';

import '../controller/homecontroller.dart';


class MyChart extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <ChartSeries<Forcastfive, String>>[
            SplineSeries<Forcastfive, String>(
              dataSource: controller.fiveDaysData,
              xValueMapper: (Forcastfive f, _) =>
              f.datetime,
              yValueMapper: (Forcastfive f, _) =>
              f.temp,
            ),
          ],
        ),
      ),
    );
  }
}