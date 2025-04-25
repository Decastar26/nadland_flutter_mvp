import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'listing_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nadland')),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('listings').orderBy('createdAt', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return Center(child: Text('Error loading listings'));
          if (snapshot.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator());

          final listings = snapshot.data!.docs;

          if (listings.isEmpty) return Center(child: Text('No listings yet'));

          return ListView.builder(
            itemCount: listings.length,
            itemBuilder: (context, index) {
              final data = listings[index].data() as Map<String, dynamic>;
              return Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(data['title'] ?? 'No title'),
                  subtitle: Text("${data['type'] ?? 'Type'} - ${data['location'] ?? 'Location'}"),
                  trailing: Text("\€${data['price']?.toStringAsFixed(0) ?? '0'}"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListingDetailScreen(listing: data),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, '/create'),
      ),
    );
  }
}