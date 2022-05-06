import 'package:flutter/material.dart';

class Comment_3 extends StatelessWidget {
  const Comment_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
            title: Text(
              'Comments',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          bottomNavigationBar: Commentbar(),
          body: ListView(children: [
            Card(
              color: Colors.black,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    //       leading: Image(image: AssetImage('')),
                    title: const Text(
                      'Name',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Gorgeous',
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child:
                            const Icon(Icons.heart_broken, color: Colors.white),
                      ),
                      FlatButton(
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Icon(
                          Icons.reply,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  //   Image.asset('assets/card-sample-image.jpg'),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.white,
            )
          ])),
    );
  }

  Widget Commentbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
      child: Row(
        children: [
          CircleAvatar(
            child: Image(image: AssetImage('lib/images/face.png')),
            radius: 25,
          ),
          Container(
            width: 240,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "comment",
                  fillColor: Colors.grey.shade100),
            ),
          ),
          CircleAvatar(
            child: Icon(
              Icons.send_sharp,
              color: Colors.white,
            ),
            radius: 25,
          )
        ],
      ),
    );
  }
}
