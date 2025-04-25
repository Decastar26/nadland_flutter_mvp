import 'package:flutter/material.dart';

class ListingDetailScreen extends StatelessWidget {
  final Map<String, dynamic> listing;

  ListingDetailScreen({required this.listing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(listing['title'] ?? 'Listing')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(listing['title'] ?? 'No Title', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(listing['description'] ?? 'No Description', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text("Price: €${listing['price']?.toStringAsFixed(0) ?? '0'}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Type: ${listing['type'] ?? 'Unknown'}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Location: ${listing['location'] ?? 'Unknown'}", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}