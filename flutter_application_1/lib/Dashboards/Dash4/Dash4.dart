import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboards/Dash1/navigation.dart';
import 'package:flutter_application_1/Dashboards/Dash4/orders.dart';
import 'package:line_icons/line_icon.dart';
import 'package:hexcolor/hexcolor.dart';

class Dash4 extends StatelessWidget {
  const Dash4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navigationDrawer(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(color: HexColor('#6979e1')),
        ),
        elevation: 1,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(22),
          decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage('lib/assets/bg2.png')),
              gradient: LinearGradient(
                  colors: [HexColor('#6679e2'), HexColor('#7558b4')],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    //margin: const EdgeInsets.all(15.0),
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              child: LineIcon.meteor(
                                color: Colors.white,
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    HexColor('#797ed8')),
                              )),
                          SizedBox(height: 5),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    //margin: const EdgeInsets.all(15.0),
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              child: LineIcon.objectGroup(
                                color: Colors.white,
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    HexColor('#797ed8')),
                              )),
                          SizedBox(height: 5),
                          Text(
                            'Products',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    //margin: const EdgeInsets.all(15.0),
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              child: LineIcon.faceWithTongue(
                                color: Colors.white,
                              ),
                              onPressed: () {},
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.all(20)),
                                  backgroundColor: MaterialStateProperty.all(
                                      HexColor('#797ed8')))),
                          SizedBox(height: 5),
                          Text(
                            'Customer',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    //margin: const EdgeInsets.all(15.0),
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              child: LineIcon.objectGroup(
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Orders();
                                }));
                              },
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.all(20)),
                                  backgroundColor: MaterialStateProperty.all(
                                      HexColor('#797ed8')))),
                          SizedBox(height: 5),
                          Text(
                            'Orders',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
