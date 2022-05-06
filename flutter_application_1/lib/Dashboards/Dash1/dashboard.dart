import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboards/Dash1/children.dart';
import 'package:flutter_application_1/Dashboards/Dash1/navigation.dart';
import 'package:flutter_application_1/features/comment/commenting.dart';

class DashPage extends StatefulWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: navigationDrawer(),
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.teal, Colors.black])),
        ),
        backgroundColor: Colors.teal,
        title: Text(
          'My Bus',
          style: TextStyle(color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.sort,
                color: Colors.white70,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/transport.jpg"),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: ListTile(
                      leading: Text(
                        'My School \n (Parent)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      trailing: SizedBox(
                          height: 100,
                          width: 50,
                          child: Image.asset('lib/assets/School_logo.jpg')))),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.teal.shade500,
                        size: 60,
                      ),
                      Text(
                        'Map Tracker',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Track Active drivers',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  )),
              ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 25, vertical: 20)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.teal.shade500,
                        size: 60,
                      ),
                      Text(
                        'Message',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'messages from driver',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  )),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Childrenpage();
                    }));
                  },
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 35, vertical: 20)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.people,
                        color: Colors.teal.shade500,
                        size: 60,
                      ),
                      Text(
                        'Childrens',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'All childrens',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  )),
              ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.teal.shade500,
                        size: 60,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Display and notification',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  )),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TestMe();
                        }))
                      },
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.help_center,
                        color: Colors.teal.shade500,
                        size: 60,
                      ),
                      Text(
                        'Help',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'App supports',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  )),
              ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.emergency_rounded,
                        color: Colors.teal.shade500,
                        size: 60,
                      ),
                      Text(
                        'Emergency',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        'Contact administrator',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class Dividerwidget extends StatelessWidget {
  const Dividerwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      color: Colors.black,
      thickness: 1,
    );
  }
}
