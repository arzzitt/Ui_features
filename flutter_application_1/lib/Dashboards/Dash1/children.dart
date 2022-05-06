import 'package:flutter/material.dart';

class Childrenpage extends StatefulWidget {
  const Childrenpage({Key? key}) : super(key: key);

  @override
  State<Childrenpage> createState() => _ChildrenpageState();
}

class _ChildrenpageState extends State<Childrenpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.teal, Colors.black])),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).context;
                },
              );
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
                leading: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(
                        'Grey',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )),
                trailing: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.teal.shade600)),
                  child: Text('Route'),
                  onPressed: () {},
                )),
          ],
        )),
      ),
    );
  }
}
