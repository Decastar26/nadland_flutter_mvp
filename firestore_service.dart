import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final _firestore = FirebaseFirestore.instance;

  Future<void> addListing({
    required String title,
    required String description,
    required double price,
    required String location,
    required String type,
  }) async {
    await _firestore.collection('listings').add({
      'title': title,
      'description': description,
      'price': price,
      'location': location,
      'type': type,
      'createdAt': DateTime.now().toIso8601String(),
    });
  }
}