import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            title: Text(
              "Contact Us",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image.asset(
                    "lib/images/contact-1.jpg",
                    height: 250,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "If you need help, \nfeel free to contact us.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 20)
                            ]),
                        height: 100,
                        width: 150,
                        child: Column(
                          children: [
                            Icon(
                              Icons.alternate_email,
                              color: Colors.red,
                              size: 50,
                            ),
                            Text("Write to us"),
                            Text("help@gmail.com"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 20)
                            ]),
                        height: 100,
                        width: 150,
                        child: Column(
                          children: [
                            Icon(
                              Icons.help_outline,
                              color: Colors.red,
                              size: 50,
                            ),
                            Text('FAQs'),
                            Text(
                              "Frequently asked questions",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 20)
                            ]),
                        height: 100,
                        width: 150,
                        child: Column(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.red,
                              size: 50,
                            ),
                            Text("Phone Number"),
                            Text("99999999"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 20)
                            ]),
                        height: 100,
                        width: 150,
                        child: Column(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 50,
                            ),
                            Text("Location"),
                            Text("Jabalpur MP"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )),
    );
  }
}
