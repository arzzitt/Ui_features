import 'package:flutter/material.dart';

class followers extends StatefulWidget {
  const followers({Key? key}) : super(key: key);

  @override
  State<followers> createState() => _followersState();
}

class _followersState extends State<followers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 10,
          child: Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(color: Colors.white60),
            child: Row(children: [
              Icon(
                Icons.home,
                color: Colors.blue.shade900,
                size: 35,
              ),
              SizedBox(width: 50),
              Icon(
                Icons.account_circle,
                color: Colors.blue.shade900.withOpacity(0.5),
                size: 35,
              ),
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.dashboard,
                color: Colors.blue.shade900.withOpacity(0.5),
                size: 35,
              ),
              SizedBox(width: 50),
              Icon(
                Icons.notifications,
                color: Colors.blue.shade900.withOpacity(0.5),
                size: 35,
              ),
            ]),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 350,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(38),
                      bottomLeft: Radius.circular(38)),
                  color: Colors.blue.shade700),
              child: Column(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      'Arjit Mishra',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    ),
                  )),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      child: Image(image: AssetImage('lib/images/face.png')),
                      radius: 50,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 65,
                        child: Center(
                          child: Text(
                            'About',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        width: 65,
                        child: Center(
                          child: Text(
                            'Feed',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        width: 75,
                        child: Center(
                          child: Text(
                            'Messages',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 35,
                        width: 65,
                        child: Center(
                          child: Text(
                            'Settings',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.pink.shade100.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '8',
                          style: TextStyle(
                              color: Colors.blue.shade700, fontSize: 40),
                        ),
                        Text(
                          'Badges',
                          style: TextStyle(
                              color: Colors.blue.shade900.withOpacity(0.6),
                              fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Text(
                          '10k',
                          style: TextStyle(
                              color: Colors.blue.shade700, fontSize: 40),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              color: Colors.blue.shade900.withOpacity(0.6),
                              fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Text(
                          '352',
                          style: TextStyle(
                              color: Colors.blue.shade700, fontSize: 40),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              color: Colors.blue.shade900.withOpacity(0.6),
                              fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white54,
              height: 225,
              width: 400,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Feed:-',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Image(
                    image: AssetImage('lib/images/feed.png'),
                    height: 200,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
