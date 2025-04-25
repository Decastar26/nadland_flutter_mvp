Future<void> addListing({
  required String title,
  required String description,
  required double price,
  required String location,
  required String type,
  String? imageUrl,
}) async {
  await _firestore.collection('listings').add({
    'title': title,
    'description': description,
    'price': price,
    'location': location,
    'type': type,
    'imageUrl': imageUrl ?? '',
    'createdAt': DateTime.now().toIso8601String(),
  });
}
