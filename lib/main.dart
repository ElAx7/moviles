import 'package:flutter/material.dart';
import 'package:app_forage/home_page.dart';
import 'package:app_forage/details.dart';
import 'package:provider/provider.dart';
import 'package:app_forage/provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ForageDataProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forage App',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}
