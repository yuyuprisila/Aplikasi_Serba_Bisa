import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/LineChart.dart';
import 'package:pemrograman_mobile/chart.dart';

class Chartsuhu extends StatefulWidget {
  const Chartsuhu({super.key});

  @override
  State<Chartsuhu> createState() => _ChartsuhuState();
}

class _ChartsuhuState extends State<Chartsuhu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chart Suhu'),),
      body: content(),
    );
  }

  Widget content(){
    return Container(
      child: LineChartWidget(suhuChart),
    );
  }
}