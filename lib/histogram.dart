// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class HistogramChart extends StatefulWidget {
//   const HistogramChart({super.key});

//   @override
//   State<HistogramChart> createState() => _HistogramChartState();
// }

// class _HistogramChartState extends State<HistogramChart> {
//   final List<ChartData1> histogramData = <ChartData1>[
//         ChartData1(5.250),        ChartData1(7.750),        ChartData1(0.0),        ChartData1(8.275),        ChartData1(9.750),        ChartData1(7.750),        ChartData1(8.275),        ChartData1(6.250),        ChartData1(5.750),        ChartData1(5.250),        ChartData1(23.000),        ChartData1(26.500),        ChartData1(26.500),        ChartData1(27.750),        ChartData1(25.025),        ChartData1(26.500),        ChartData1(28.025),        ChartData1(29.250),        ChartData1(26.750),        ChartData1(27.250),        ChartData1(26.250),        ChartData1(25.250), ChartData1(34.500),   ChartData1(25.625),  ChartData1(25.500),        ChartData1(26.625), ChartData1(36.275), ChartData1(36.250),        ChartData1(26.875),  ChartData1(40.000),        ChartData1(43.000),  ChartData1(46.500),        ChartData1(47.750),  ChartData1(45.025),        ChartData1(56.500),  ChartData1(56.500),        ChartData1(58.025),  ChartData1(59.250),        ChartData1(56.750),  ChartData1(57.250),        ChartData1(46.250),  ChartData1(55.250),        ChartData1(44.500),ChartData1(45.525),        ChartData1(55.500),ChartData1(46.625),        ChartData1(46.275),ChartData1(56.250),        ChartData1(46.875),ChartData1(43.000),        ChartData1(46.250),ChartData1(55.250),        ChartData1(44.500), ChartData1(45.425),ChartData1(55.500),ChartData1(56.625), ChartData1(46.275), ChartData1(56.250), ChartData1(46.875),        ChartData1(43.000),        ChartData1(46.250),        ChartData1(55.250),        ChartData1(44.500),        ChartData1(45.425),        ChartData1(55.500),        ChartData1(46.625),        ChartData1(56.275),        ChartData1(46.250),        ChartData1(56.875),        ChartData1(41.000),        ChartData1(63.000),        ChartData1(66.500),        ChartData1(67.750),        ChartData1(65.025),        ChartData1(66.500),        ChartData1(76.500),        ChartData1(78.025),        ChartData1(79.250),        ChartData1(76.750),        ChartData1(77.250),        ChartData1(66.250),        ChartData1(75.250),        ChartData1(74.500),        ChartData1(65.625),        ChartData1(75.500),        ChartData1(76.625),        ChartData1(76.275),        ChartData1(66.250),        ChartData1(66.875),        ChartData1(80.000),        ChartData1(85.250),
//         ChartData1(87.750),        ChartData1(89.000),        ChartData1(88.275),        ChartData1(89.750),        ChartData1(97.750),        ChartData1(98.275),        ChartData1(96.250),        ChartData1(95.750), ChartData1(95.250)
//         ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Histogram"),
//       ),
//       body:   Center(
//                 child: SizedBox(
//                   height: 200,
//                     child: SfCartesianChart(series: <ChartSeries>[
//                     HistogramSeries<ChartData1, double>(
//                     dataSource: histogramData,
//                     showNormalDistributionCurve: true,
//                     curveColor: const Color.fromRGBO(192, 108, 132, 1),
//                     binInterval: 20,
//                     yValueMapper: (ChartData1 data, _) => data.y)]
//                      )
//                   )
//                )
//     );
//   }
// }
//     class ChartData1 {
//         ChartData1(this.y);
//         final double y;
//     }