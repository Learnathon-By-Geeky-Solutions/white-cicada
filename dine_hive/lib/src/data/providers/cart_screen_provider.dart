import 'package:dine_hive/src/data/models/food_model.dart';
import 'package:flutter/cupertino.dart';

class CartScreenProvider extends ChangeNotifier {
  /// Cart item list
  final List<FoodModel> _cartItem = [];

  /// Public getter for cart items
  List<FoodModel> get cartItem => _cartItem;

  /// Check if an item is already in the cart
  bool isInCart(FoodModel item) {
    return _cartItem.any((element) => element.foodId == item.foodId);
  }

  /// Add item to cart if not already in it
  void addToCart(FoodModel item) {
    if (isInCart(item)) {
      debugPrint('${item.name} is already in the cart.');
      return;
    }
    _cartItem.add(item);
    debugPrint('Added: ${item.name}');
    notifyListeners();
  }

  /// Remove item from cart by foodId
  void removeFromCart(FoodModel item) {
    _cartItem.removeWhere((element) => element.foodId == item.foodId);
    debugPrint('Removed: ${item.name}');
    notifyListeners();
  }
}
