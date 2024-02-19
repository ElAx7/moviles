import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String image;
  final String exchangeName;
  final String exchangeDescription;
  final String date;

  DetailsPage({
    super.key,
    required this.image,
    required this.exchangeName,
    required this.exchangeDescription,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 5),
          Image.network(image, height: 64),
          SizedBox(height: 40),
          Text(
            exchangeName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Year established: $date',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Expanded(
            child: Container(
              child: Image.network(image),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Expanded(
            child: Text(
              'Description: ${exchangeDescription.isNotEmpty ? exchangeDescription : 'No Disponible'}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
