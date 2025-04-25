class Listing {
  final String id;
  final String title;
  final String description;
  final double price;
  final String location;
  final String type; // apartment, house, land, business, etc.
  final bool shortTerm;
  final bool longTerm;
  final bool forSale;
  final List<String> imageUrls;
  final String userId;
  final DateTime createdAt;

  Listing({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.location,
    required this.type,
    required this.shortTerm,
    required this.longTerm,
    required this.forSale,
    required this.imageUrls,
    required this.userId,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'price': price,
      'location': location,
      'type': type,
      'shortTerm': shortTerm,
      'longTerm': longTerm,
      'forSale': forSale,
      'imageUrls': imageUrls,
      'userId': userId,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}