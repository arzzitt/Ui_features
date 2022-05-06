import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Dash3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, Colors.blue.shade900),
      ChartData('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
      ChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
      ChartData('Others', 52, Color.fromRGBO(255, 189, 57, 1))
    ];

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                Color.fromARGB(255, 1, 35, 35),
                Color.fromARGB(255, 75, 88, 201)
              ])),
        ),
        title: Text('Dashboard'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.black, Colors.blue.shade900])),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Daily Usage:-',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              child: SfCircularChart(annotations: <CircularChartAnnotation>[
            CircularChartAnnotation(
                widget: Container(
                    child: PhysicalModel(
                        child: Container(),
                        shape: BoxShape.circle,
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: const Color.fromRGBO(230, 230, 230, 1)))),
            CircularChartAnnotation(
                widget: Container(
                    child: const Text('62%',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28))))
          ], series: <CircularSeries>[
            DoughnutSeries<ChartData, String>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                // Radius of doughnut
                radius: '70%')
          ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 15,
                width: 15,
                color: Color.fromRGBO(9, 0, 136, 1),
              ),
              Text(' : Calling',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              Container(
                height: 15,
                width: 15,
                color: Color.fromRGBO(147, 0, 119, 1),
              ),
              Text(
                ' : Whatsapp',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Container(
                height: 15,
                width: 15,
                color: Color.fromRGBO(228, 0, 124, 1),
              ),
              Text(' : Instagram',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              Container(
                height: 15,
                width: 15,
                color: Color.fromRGBO(255, 189, 57, 1),
              ),
              Text(' : Others',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 330,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Your screen time icreased by 62% than before',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Daily Tasks',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue.shade400),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)))),
                      ),
                      SizedBox(width: 50),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Goals',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 20)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue.shade400),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)))),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: LinearPercentIndicator(
                      leading: LineIcon.instagram(
                        size: 45,
                      ),
                      width: 250.0,
                      lineHeight: 20.0,
                      percent: 0.6,
                      center: Text(
                        "60.0%",
                        style: new TextStyle(fontSize: 12.0),
                      ),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: LinearPercentIndicator(
                      leading: LineIcon.whatSApp(
                        size: 45,
                      ),
                      width: 250.0,
                      lineHeight: 20.0,
                      percent: 0.2,
                      center: Text(
                        "20.0%",
                        style: new TextStyle(fontSize: 12.0),
                      ),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: LinearPercentIndicator(
                      leading: LineIcon.phone(
                        size: 45,
                      ),
                      width: 250.0,
                      lineHeight: 20.0,
                      percent: 0.15,
                      center: Text(
                        "15.0%",
                        style: new TextStyle(fontSize: 12.0),
                      ),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: LinearPercentIndicator(
                      leading: LineIcon.appStore(
                        size: 45,
                      ),
                      width: 250.0,
                      lineHeight: 20.0,
                      percent: 0.05,
                      center: Text(
                        "5.0%",
                        style: new TextStyle(fontSize: 12.0),
                      ),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  )
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
