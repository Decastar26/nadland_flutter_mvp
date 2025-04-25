import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    'Apartments',
    'Houses',
    'Studios',
    'Villas',
    'Short-Term Rentals',
    'Long-Term Rentals',
    'Offices',
    'Commercial Properties',
    'Businesses for Sale',
    'Land/Plots'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nadland')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index]),
            onTap: () {
              // Navigate to listings for this category
            },
          );
        },
      ),
    );
  }
}