import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool tap1 = false, tap2 = false, tap3 = false, tap4 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title:
                const Text('Mc Flutter', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.indigo,
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_circle_sharp,
                                size: 52,
                              ),
                              Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text("Flutter McFlutter",
                                      style: TextStyle(fontSize: 26)),
                                  Text("Experienced App developer",
                                      style: TextStyle(fontSize: 14)),
                                  Padding(padding: EdgeInsets.all(5))
                                ],
                              )
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("  123 Main Stream"),
                              Text("(415)555-0198  "),
                            ]),
                        Padding(padding: EdgeInsets.all(2)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                color: tap1 ? Colors.indigo : Colors.black54,
                                onPressed: () {
                                  tap1 = !tap1;
                                  setState(() {});
                                },
                                icon: Icon(Icons.accessibility_new)),
                            IconButton(
                                color: tap2 ? Colors.indigo : Colors.black54,
                                onPressed: () {
                                  tap2 = !tap2;
                                  setState(() {});
                                },
                                icon: Icon(Icons.timer)),
                            IconButton(
                                color: tap3 ? Colors.indigo : Colors.black54,
                                onPressed: () {
                                  tap3 = !tap3;
                                  setState(() {});
                                },
                                icon: Icon(Icons.phone_android)),
                            IconButton(
                                color: tap4 ? Colors.indigo : Colors.black54,
                                onPressed: () {
                                  tap4 = !tap4;
                                  setState(() {});
                                },
                                icon: Icon(Icons.phone_iphone))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
