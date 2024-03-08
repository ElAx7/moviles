import 'package:flutter/material.dart';
import 'package:app_forage/details.dart';
import 'package:app_forage/provider/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ForageDataProvider>(context);
    final forageDataList = provider.forageDataList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forage'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: forageDataList.length,
        itemBuilder: (context, index) {
          final forageData = forageDataList[index];
          return Dismissible(
            key: Key(forageData.name),
            onDismissed: (direction) {
              provider.deleteData(forageData);
            },
            child: Card(
              child: ListTile(
                title: Text(forageData.name),
                subtitle: Text(forageData.location),
                trailing: Checkbox(
                  value: forageData.isChecked,
                  onChanged: null,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailsPage()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
