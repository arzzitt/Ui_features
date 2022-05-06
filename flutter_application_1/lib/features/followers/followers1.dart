import 'package:flutter/material.dart';
import 'package:countup/countup.dart';
import 'package:hexcolor/hexcolor.dart';

class followers_2 extends StatelessWidget {
  const followers_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor('#080d13'),
          body: Column(
            children: [
              Container(
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage('lib/images/space.png'))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80, left: 20),
                        child: Text('FOLLOWERS',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w800)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Countup(
                          begin: 0,
                          end: 7500,
                          duration: Duration(seconds: 3),
                          separator: ',',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Contact us',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(2),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.white
                                                  .withOpacity(0.5))))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Hear my story',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(2),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.white
                                                  .withOpacity(0.5))))),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, .7),
                          blurRadius: 40.0,
                          offset: Offset(0, 10))
                    ],
                  ),
                  child: Column(children: [
                    Text(
                      'All time shot views',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade900.withOpacity(0.8),
                          fontSize: 20),
                    ),
                    Countup(
                      begin: 0,
                      end: 6132,
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Likes',
                        style: TextStyle(
                            color: Colors.purple.shade900.withOpacity(0.8),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text('8520963',
                        style: TextStyle(
                            color: Colors.purple.shade900,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Comments',
                        style: TextStyle(
                            color: Colors.pink.shade500.withOpacity(0.8),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text('850',
                        style: TextStyle(
                            color: Colors.pink.shade500,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Marshall Bruce Mathers III, known professionally as Eminem, is an American rapper, songwriter, and record producer. He is credited with popularizing hip hop in middle America and is critically acclaimed as one of the greatest rappers of all time.',
                      style: TextStyle(
                          color: Colors.pink.shade500.withOpacity(0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
