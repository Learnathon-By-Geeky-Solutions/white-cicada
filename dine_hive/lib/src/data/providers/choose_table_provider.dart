import 'package:flutter/cupertino.dart';
import '../models/restaurant_model.dart';
import '../models/restaurant_table_model.dart';

class ChooseTableProvider extends ChangeNotifier{

  RestaurantModel? getRestaurantById(String id, List<RestaurantModel> restaurants) {
    try {
      return restaurants.firstWhere((restaurant) => restaurant.sId == id);
    } catch (e) {
      return null;
    }
  }

  List<RestaurantTableModel>? getTablesById(String id, List<RestaurantTableModel> dummyTables) {
    try{
      List<RestaurantTableModel> tables = dummyTables.where((table) => table.sId == id).toList();
      return tables;
    }catch(e) {
      return null;
    }
  }
}