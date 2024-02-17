import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> iconos = ['Burger', 'HotDog', 'Fries', 'Soda', 'IceCream'];
  int selecTitleIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu Demo',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Explore the restaurants delicious menu items below!',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: iconos.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index == selecTitleIndex ? Colors.blue : null,
                  onTap: () {
                    setState(() {
                      selecTitleIndex = index;
                    });
                  },
                  leading: Image.asset([
                    'assets/hamburguer.jpg',
                    'assets/hotgod.jpg',
                    'assets/fries.jpg',
                    'assets/soda.jpg',
                    'assets/icecream.jpg'
                  ][index]),
                  title: Text('${iconos[index]}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showMyDialog(context, 'Pickup');
                    'Pickup';
                  },
                  child: Text('Pickup'),
                ),
                VerticalDivider(
                  thickness: 100.0,
                  color: Colors.grey,
                ),
                ElevatedButton(
                  onPressed: () {
                    _showMyDialog(context, 'Delivery');
                    'Delivery';
                  },
                  child: Text('Delivery'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showMyDialog(BuildContext context, String option) {
    String selectedOpcion = iconos[selecTitleIndex];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Order Confirmation'),
          content: Text(
              'Your order has been process! \nSelected item: $selectedOpcion\nSelected option: $option'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
