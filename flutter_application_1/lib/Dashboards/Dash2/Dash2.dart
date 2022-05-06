import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboards/Dash1/navigation.dart';
import 'package:flutter_application_1/features/comment/comment-fb.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class Dash2 extends StatelessWidget {
  const Dash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: navigationDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          'DashBoard',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  //margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            child: LineIcon.building(
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.pink.withOpacity(0.4)),
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                side: MaterialStateProperty.all(
                                    BorderSide(color: Colors.pink)))),
                        SizedBox(height: 5),
                        Text(
                          'Analytics',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  //margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            child: LineIcon.home(
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.yellow.withOpacity(0.4)),
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                side: MaterialStateProperty.all(
                                    BorderSide(color: Colors.yellow)))),
                        SizedBox(height: 5),
                        Text(
                          'Customers',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  //margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            child: LineIcon.moneyBill(
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.green.withOpacity(0.4)),
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                side: MaterialStateProperty.all(
                                    BorderSide(color: Colors.green)))),
                        SizedBox(height: 5),
                        Text(
                          'Orders',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  //margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            child: LineIcon.moneyCheck(
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Test_comment();
                              }));
                            },
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blue.withOpacity(0.4)),
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                side: MaterialStateProperty.all(
                                    BorderSide(color: Colors.blue)))),
                        SizedBox(height: 5),
                        Text(
                          'Help',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  //margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            child: LineIcon.bell(
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.purple.withOpacity(0.4)),
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                side: MaterialStateProperty.all(
                                    BorderSide(color: Colors.purple)))),
                        SizedBox(height: 5),
                        Text(
                          'Sales',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  //margin: const EdgeInsets.all(15.0),
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            child: LineIcon.box(
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.orange.withOpacity(0.4)),
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                side: MaterialStateProperty.all(
                                    BorderSide(color: Colors.orange)))),
                        SizedBox(height: 5),
                        Text(
                          'Product',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
