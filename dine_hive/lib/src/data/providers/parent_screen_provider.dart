import 'package:dine_hive/src/features/user/cart_screen/cart_screen.dart';
import 'package:dine_hive/src/features/user/home_screen/home_screen.dart';
import 'package:dine_hive/src/features/user/payment_gateway_selection_screen/payment_gateway_selection_screen.dart';
import 'package:dine_hive/src/features/user/qr_scanner_screen/qr_scanner_screen.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/user_profile_screen.dart';
import 'package:flutter/cupertino.dart';

class ParentScreenProvider extends ChangeNotifier{
  List<Widget> _allPages= [
    HomeScreen(),
    UserProfileScreen(),
    CartScreen(),
    QrScannerScreen(),
  ];
  List get allPages => _allPages;
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setNavBarScreen(int tappedIndex){
    _selectedIndex = tappedIndex;
    notifyListeners();
  }
}