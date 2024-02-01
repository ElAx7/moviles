import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void showWeather(int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "${index == 0 ? 'Today' : index == 1 ? 'Monday' : index == 2 ? 'Tuesday' : index == 3 ? 'Wednesday' : index == 4 ? 'Thursday' : index == 5 ? 'Friday' : index == 6 ? 'Saturday' : index == 7 ? 'Sunday' : index == 8 ? 'Monday' : 'Tuesday'}: ${index == 0 ? '28°/9⁰' : index == 1 ? '27°/9⁰' : index == 2 ? '26°/9⁰' : index == 3 ? '25°/9⁰' : index == 4 ? '24°/9⁰' : index == 5 ? '23°/9⁰' : index == 6 ? '22°/9⁰' : index == 7 ? '21°/9⁰' : index == 8 ? '20°/9⁰' : '19°/9⁰'}",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: const Text('Hourly forecast',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('16°', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Icon(Icons.bedtime, size: 30, color: Colors.indigo),
                    SizedBox(height: 2),
                    Text('Now', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('14°', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Icon(Icons.bedtime, size: 30, color: Colors.indigo),
                    SizedBox(height: 2),
                    Text('12 AM', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('14°', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Icon(Icons.bedtime, size: 30, color: Colors.indigo),
                    SizedBox(height: 2),
                    Text('1 AM', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('13°', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Icon(Icons.bedtime, size: 30, color: Colors.indigo),
                    SizedBox(height: 2),
                    Text('2 AM', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('11°', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Icon(Icons.bedtime, size: 30, color: Colors.indigo),
                    SizedBox(height: 2),
                    Text('3 AM', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    '10-days Forecast',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              )),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showWeather(index);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(13.0),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${index == 0 ? 'Today' : index == 1 ? 'Monday' : index == 2 ? 'Tuesday' : index == 3 ? 'Wednesday' : index == 4 ? 'Thursday' : index == 5 ? 'Friday' : index == 6 ? 'Saturday' : index == 7 ? 'Sunday' : index == 8 ? 'Monday' : 'Tuesday'}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Icon(Icons.sunny, color: Colors.yellow),
                            SizedBox(width: 50),
                            Text(
                              '${index == 0 ? '28°/9⁰' : index == 1 ? '27°/9⁰' : index == 2 ? '26°/9⁰' : index == 3 ? '25°/9⁰' : index == 4 ? '24°/9⁰' : index == 5 ? '23°/9⁰' : index == 6 ? '22°/9⁰' : index == 7 ? '21°/9⁰' : index == 8 ? '20°/9⁰' : '19°/9⁰'}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
