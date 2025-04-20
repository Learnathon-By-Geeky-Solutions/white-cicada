import 'package:dine_hive/src/features/user/order_screen/sub_screena/cart_section.dart';
import 'package:dine_hive/src/features/user/order_screen/sub_screena/choose_food_section.dart';
import 'package:flutter/cupertino.dart';
import '../../features/user/payment_gateway_selection_screen/widgets/payment_gateway_option_widget.dart';

class OrderProvider extends ChangeNotifier {

  /// in this part control the page view
  /// initialize every thing
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _carouselItems = [
    const ChooseFoodSection(),
    const CartSection(),
    const PaymentGatewayOptionWidget()
  ];
  final List<String>_appBarTitle=[
    'Choose your food',
    'Order Details',
  ];
  /// getting all the variable & lists
  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;
  List<Widget> get carouselItems => _carouselItems;
  List<String> get appBarTitle => _appBarTitle;

  /// updating index
  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  /// updating page view
  /// after that call the updateIndex function to update the index
  void updatePage(int pageIndex) {
    _pageController.jumpToPage(pageIndex);
    updateIndex(pageIndex);
  }
}
