// import 'package:flutter/material.dart';

// class SimpleBarChart extends StatefulWidget {
//   SimpleBarChart({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _SimpleBarChartState createState() => _SimpleBarChartState();
// }

// class _SimpleBarChartState extends State<SimpleBarChart> {
//   late List<charts.Series<OrdinalSales, String>> _seriesData;

//   _generateData() {
//     var data = [
//       OrdinalSales('2014', 5),
//       OrdinalSales('2015', 25),
//       OrdinalSales('2016', 100),
//       OrdinalSales('2017', 75),
//     ];

//     _seriesData.add(
//       charts.Series(
//         id: 'Sales',
//         data: data,
//         domainFn: (OrdinalSales sales, _) => sales.year,
//         measureFn: (OrdinalSales sales, _) => sales.sales,
//         labelAccessorFn: (OrdinalSales sales, _) =>
//             '${sales.year}: \$${sales.sales}',
//       ),
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//     _seriesData = List<charts.Series<OrdinalSales, String>>();
//     _generateData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Container(
//           height: 400,
//           padding: EdgeInsets.all(20),
//           child: charts.BarChart(
//             _seriesData,
//             animate: true,
//             barGroupingType: charts.BarGroupingType.grouped,
//             animationDuration: Duration(milliseconds: 500),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class OrdinalSales {
//   final String year;
//   final int sales;

//   OrdinalSales(this.year, this.sales);
// }
