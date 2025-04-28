import 'package:dine_hive/src/data/models/food_model.dart';
import 'package:dine_hive/src/data/models/order_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

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


  /// select time & date slot
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String? _selectedTimeSlot;
  List<String> _timeSlots= [];
  DateTime get  focusedDay => _focusedDay;
  DateTime? get  selectedDay => _selectedDay;
  String? get  selectedTimeSlot => _selectedTimeSlot;
  List<String> get  timeSlots => _timeSlots;

  void generateTimeSlots() {
    List<String> slots = [];
    DateTime startTime = DateTime(0, 0, 0, 9, 30); // 9:00 AM
    DateTime endTime = DateTime(0, 0, 0, 18, 0);  // 6:00 PM

    while (startTime.isBefore(endTime)) {
      slots.add(DateFormat.jm().format(startTime));
      startTime = startTime.add(const Duration(minutes: 30));
    }
    _timeSlots = slots;
    notifyListeners();
  }

  void daySelection(DateTime selectedDay,DateTime focusedDay){
    _selectedDay = selectedDay;
    _focusedDay = focusedDay;
    generateTimeSlots();
    notifyListeners();
  }

  selectedSlot(String slot){
    _selectedTimeSlot = slot;
    notifyListeners();
  }

}
