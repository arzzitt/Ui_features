import 'package:flutter/material.dart';

class Contactus_4 extends StatelessWidget {
  const Contactus_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('lib/images/contact.jpg'),
                    height: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Subject",
                        fillColor: Colors.grey.shade100),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Description",
                        fillColor: Colors.grey.shade100),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all(Colors.orange),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange)),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                        'Customer Care: 0761 999999 \n email: customerservice@phaico.om'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
