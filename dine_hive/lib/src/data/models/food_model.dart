class FoodModel {
  final String foodId;
  final String restaurantId;
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final double discount;

  FoodModel({
    required this.foodId,
    required this.restaurantId,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.discount,
  });

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'foodId': foodId,
      'restaurantId': restaurantId,
      'name': name,
      'category': category,
      'imageUrl': imageUrl,
      'price': price,
      'discount': discount,
    };
  }

  // Convert from JSON
  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      foodId: json['foodId'],
      restaurantId: json['restaurantId'],
      name: json['name'],
      category: json['category'],
      imageUrl: json['imageUrl'],
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
    );
  }
}
