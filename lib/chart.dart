import 'package:collection/collection.dart';

class SuhuChart {
  final double x;
  final double y;
  SuhuChart({required this.x, required this.y});
}

List<SuhuChart>get suhuChart{
  final data = <double>[2,5,1,9];
  return data.mapIndexed((index, element) => SuhuChart(x: index.toDouble(), y: element)).toList();
}