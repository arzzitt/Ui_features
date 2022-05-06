import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/comment/comment-3.dart';
import 'package:flutter_application_1/features/comment/comment-4.dart';
import 'package:flutter_application_1/features/comment/comment-fb.dart';
import 'package:flutter_application_1/features/comment/commenting.dart';

class Comment_main extends StatelessWidget {
  const Comment_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        "Comment-1": (context) => TestMe(),
        "Comment-2": (context) => Test_comment(),
        "Comment-3": (context) => Comment_3(),
        "Comment-4": (context) => Comment4(),
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
            RouteButton(title: 'Comment-1', routeName: 'Comment-1'),
            RouteButton(title: 'Comment-2', routeName: 'Comment-2'),
            RouteButton(title: 'Comment-3', routeName: 'Comment-3'),
            RouteButton(title: 'Comment-4', routeName: 'Comment-4'),
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
