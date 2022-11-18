// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  // ignore: non_constant_identifier_names
  List<ChartData> chartData = [
    ChartData('Frustración', 2),
    ChartData('Estrés', 3),
    ChartData('Ansiedad', 1),
    ChartData('Alegría', 1),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            padding: EdgeInsets.all(30),
            height: 400.0,
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              primaryYAxis: NumericAxis(
                minimum: 0,
                maximum: 7,
              ),
              series: [
                StackedColumnSeries(
                    color: Colors.deepPurple.shade300,
                    dataSource: chartData,
                    xValueMapper: (ChartData ch, _) => ch.x,
                    yValueMapper: (ChartData ch, _) => ch.y1)
              ],
            )),
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              title: Text(
                "Lunes",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Ese día estuve estresada",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(Icons.sentiment_dissatisfied_rounded, size: 50.0),
              shape: Border(
                bottom: BorderSide(),
              ),
            ),
            ListTile(
              title: Text(
                "Martes",
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600, height: 0.0),
              ),
              subtitle: Text(
                "Ese día estuve frustrada",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(Icons.sentiment_dissatisfied_rounded, size: 50.0),
              shape: Border(
                bottom: BorderSide(),
              ),
            ),
            ListTile(
              title: Text(
                "Miércoles",
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600, height: 0.0),
              ),
              subtitle: Text(
                "Ese día estuve frustrada",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(Icons.sentiment_dissatisfied_rounded, size: 50.0),
              shape: Border(
                bottom: BorderSide(),
              ),
            ),
            ListTile(
              title: Text(
                "Jueves",
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600, height: 0.0),
              ),
              subtitle: Text(
                "Ese día estuve frustrada",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(Icons.sentiment_dissatisfied_rounded, size: 50.0),
              shape: Border(
                bottom: BorderSide(),
              ),
            ),
            ListTile(
              title: Text(
                "Viernes",
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600, height: 0.0),
              ),
              subtitle: Text(
                "Ese día estuve frustrada",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(Icons.sentiment_dissatisfied_rounded, size: 50.0),
              shape: Border(
                bottom: BorderSide(),
              ),
            ),
            ListTile(
              title: Text(
                "Sábado",
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600, height: 0.0),
              ),
              subtitle: Text(
                "Ese día estuve frustrada",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(Icons.sentiment_dissatisfied_rounded, size: 50.0),
              shape: Border(
                bottom: BorderSide(),
              ),
            ),
            ListTile(
              title: Text(
                "Domingo",
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600, height: 0.0),
              ),
              subtitle: Text(
                "Ese día estuve frustrada",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(Icons.sentiment_dissatisfied_rounded, size: 50.0),
              shape: Border(
                bottom: BorderSide(),
              ),
            ),
            SizedBox(
              height: 40.0,
            )
          ],
        )
      ],
    );
  }
}

class ChartData {
  final String x;
  final int y1;
  ChartData(this.x, this.y1);
}
