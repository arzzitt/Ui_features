import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/comment/commenting.dart';
import 'package:hexcolor/hexcolor.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(color: HexColor('#6979e1')),
        ),
        elevation: 1,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context, false);
              },
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
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [HexColor('#6679e2'), HexColor('#7558b4')],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: ListView(
            children: [
              Card(
                color: Colors.white,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      title: const Text(
                        'Cycle',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(0),
                        child: Expanded(
                            child: Image(
                          image: AssetImage('lib/assets/cycle.jpg'),
                        ))),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                            onPressed: () {
                              // Perform some action
                            },
                            child: Icon(Icons.heart_broken)),
                        FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (Context) {
                                return TestMe();
                              }));
                            },
                            child: Icon(Icons.comment)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
