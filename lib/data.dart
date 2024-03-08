import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  final String name;
  final String location;
  final bool isChecked;
  final String notes;

  const DataPage({
    super.key,
    required this.name,
    required this.location,
    required this.isChecked,
    required this.notes,
  });

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forage Data'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${widget.name}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Location: ${widget.location}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: widget.isChecked,
                  onChanged: null,
                ),
                const Text('Currently in season'),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Notes: ${widget.notes}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
