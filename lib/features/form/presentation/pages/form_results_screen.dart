import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'dart:convert';

import '../data_provider/responses_form_data_provider.dart';

class FromResultsScreen extends StatefulWidget {
  const FromResultsScreen({Key? key}) : super(key: key);

  @override
  State<FromResultsScreen> createState() => _FromResultsScreenState();
}

class _FromResultsScreenState extends State<FromResultsScreen> {
  late ResponsesFormDataProvider dataProvider;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true);
    dataProvider = Provider.of<ResponsesFormDataProvider>(
      context,
      listen: false,
    );
    dataProvider.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Consumer<ResponsesFormDataProvider>(
        builder: (context, dataProvider, child) {
      Map<String, dynamic>? val =
          dataProvider.formJson!['filteredResponsesSummary'] ?? {};

      List<List<ChartData>> god = [];
      val!.values.forEach((element) {
        List<ChartData> chartData = [];
        if (element != null) {
          Map<String, dynamic> e = element;
          e.forEach((key, value) {
            chartData.add(ChartData(key, double.parse(value.toString()),
                Color.fromRGBO(9, 0, 136, 1)));
          });

          god.add(chartData);
        }
      });
      return ListView.builder(
        itemCount: val.keys.length,
        itemBuilder: (BuildContext context, int index) {
          return SfCircularChart(
              title: ChartTitle(
                  text: val.keys.elementAt(index),
                  // Aligns the chart title to left
                  alignment: ChartAlignment.center,
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                  )),
              tooltipBehavior: _tooltipBehavior,
              legend: Legend(
                  toggleSeriesVisibility: true,
                  title: LegendTitle(
                      text: 'Answers',
                      textStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900)),
                  isVisible: true,
                  position: LegendPosition.left,
                  borderColor: Colors.black,
                  borderWidth: 2),
              series: <CircularSeries>[
                PieSeries<ChartData, String>(
                    enableTooltip: true,
                    dataSource: god[index],
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    dataLabelSettings: DataLabelSettings(
                        // Renders the data label
                        isVisible: true),
                    // Radius of doughnut
                    radius: '50%')
              ]);
        },
      );
    })));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
