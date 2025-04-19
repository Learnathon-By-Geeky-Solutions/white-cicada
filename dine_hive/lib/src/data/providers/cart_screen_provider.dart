import 'package:dine_hive/src/data/models/food_model.dart';
import 'package:flutter/cupertino.dart';

class CartScreenProvider extends ChangeNotifier{

  ///initialized cart list & get
  final List<FoodModel>  _cartIem = [];
  List get cartItem => _cartIem;

  /// here added item in cart
  void addToCart(FoodModel item) {
    if (_cartIem.any((element) => element.foodId == item.foodId)) {
      debugPrint('${item.name} is already in the cart.');
      return;
    }
    _cartIem.add(item);
    debugPrint('Added: ${_cartIem.last.name}');
    notifyListeners();
  }

}