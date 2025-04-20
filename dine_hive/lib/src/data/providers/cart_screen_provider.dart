import 'package:dine_hive/src/data/models/food_model.dart';
import 'package:dine_hive/src/data/models/order_model.dart';
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

  /// Increase quantity of item already in the cart
  void increaseQuantity(FoodModel item) {
    final index = _cartItem.indexWhere((e) => e.foodId == item.foodId);
    if (index != -1) {
      _cartItem[index].quantity += 1;
      notifyListeners();
    }
  }

  /// Decrease quantity or remove if quantity becomes 0
  void decreaseQuantity(FoodModel item) {
    final index = _cartItem.indexWhere((e) => e.foodId == item.foodId);
    if (index != -1) {
      if (_cartItem[index].quantity > 1) {
        _cartItem[index].quantity -= 1;
      } else {
        _cartItem.removeAt(index);
      }
      notifyListeners();
    }
  }


  /// Order Information here
  late OrderModel order;
  late String restaurantName;
  late String restaurantId;
  late String userId;
  late String userName;
  late int tableNo;
  final double tablePrice = 200;
  double subTotalPrice = 0;
  double totalPrice = 0;

  void calculateTotalPrice(){
    subTotalPrice = 0;
    for(int i=0; i<_cartItem.length; i++){
      subTotalPrice = subTotalPrice +(_cartItem[i].quantity*_cartItem[i].price);
    }
    totalPrice = subTotalPrice + tablePrice;
    notifyListeners();
  }

}
