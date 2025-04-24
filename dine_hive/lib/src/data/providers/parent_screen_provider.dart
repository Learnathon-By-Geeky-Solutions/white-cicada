import 'package:dine_hive/src/features/user/cart_screen/cart_screen.dart';
import 'package:dine_hive/src/features/user/home_screen/home_screen.dart';
import 'package:dine_hive/src/features/user/payment_successful_screen/widgets/payment_successful_screen_body__widget.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/user_profile_screen.dart';
import 'package:flutter/cupertino.dart';

class ParentScreenProvider extends ChangeNotifier{

  /// initialize  & getting all the pages in parent screen and selected index
  final List<Widget> _allPages= [
    const HomeScreen(),
    const UserProfileScreen(),
    const CartScreen(),
    const PaymentSuccessfulScreenBodyWidget(),
  ];
  List get allPages => _allPages;
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  /// updating parent screen body
  void updateNavBarScreen(int tappedIndex){
    _selectedIndex = tappedIndex;
    notifyListeners();
  }
}