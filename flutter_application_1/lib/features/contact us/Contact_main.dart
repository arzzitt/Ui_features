import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/contact%20us/Contactsus.dart';
import 'package:flutter_application_1/features/contact%20us/contactus-3.dart';
import 'package:flutter_application_1/features/contact%20us/contactus-4.dart';
import 'package:flutter_application_1/features/contact%20us/contactus2.dart';

class Contact_main extends StatelessWidget {
  const Contact_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        "Contact us-1": (context) => contact_page(),
        "Contact us-2": (context) => contact(),
        "Contact us-3": (context) => Contactus_3(),
        "Contact us-4": (context) => Contactus_4(),
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
            RouteButton(title: 'Contactus-1', routeName: 'Contact us-1'),
            RouteButton(title: 'Contactus-2', routeName: 'Contact us-2'),
            RouteButton(title: 'Contactus-3', routeName: 'Contact us-3'),
            RouteButton(title: 'Contactus-4', routeName: 'Contact us-4'),
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
