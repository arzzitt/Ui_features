import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboards/Dash1/dashboard.dart';
import 'package:flutter_application_1/Dashboards/Dash2/Dash2.dart';
import 'package:flutter_application_1/Dashboards/Dash3/Dash3.dart';
import 'package:flutter_application_1/Dashboards/Dash4/Dash4.dart';

class Dash_main extends StatelessWidget {
  const Dash_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        "Dash_1": (context) => DashPage(),
        "Dash-2": (context) => Dash2(),
        "Dash-3": (context) => Dash3(),
        "Dash-4": (context) => Dash4(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            RouteButton(title: 'Dash-1', routeName: 'Dash_1'),
            RouteButton(title: 'Dash-2', routeName: 'Dash-2'),
            RouteButton(title: 'Dash-3', routeName: 'Dash-3'),
            RouteButton(title: 'Dash-4', routeName: 'Dash-4'),
          ],
        ),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  const RouteButton({Key? key, required this.title, required this.routeName})
      : super(key: key);

  final String title;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () => Navigator.pushNamed(context, routeName),
        child: Text(title),
        textColor: Colors.white,
        color: Colors.blue[600]);
  }
}
