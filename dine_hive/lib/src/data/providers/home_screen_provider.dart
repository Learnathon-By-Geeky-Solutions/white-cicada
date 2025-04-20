import 'package:dine_hive/core/widgets/offer_card.dart';
import 'package:dine_hive/src/data/models/food_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../dummy_data/static_data.dart';

class HomeScreenProvider extends ChangeNotifier {
  /// Home screen page controlling for hotel ad
  /// init part
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _carouselItems = [
    const OfferCard(),
    const OfferCard(),
    const OfferCard()
  ];

  /// get private variables
  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;
  List<Widget> get carouselItems => _carouselItems;

  /// update index
  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  /// update pages
  void updatePage(int pageIndex) {
    _pageController.jumpToPage(pageIndex);
    updateIndex(pageIndex);
  }

  /// category selection part
  /// default set all to show all food
  String _selectedCategory = "All";

  /// getting category
  String get selectedCategory => _selectedCategory;

  ///selecting category
  void selectCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  ///search query initially ''
  String _searchQuery = '';
  String get searchQuery => _searchQuery;

  /// in this part first selecting category
  void updateSearchQuery(String value) {
    _searchQuery = value;
    notifyListeners();
  }
  /// here first filtered by category which is selected
  /// then checking search from text field value
  List<FoodModel> get filteredFoodList {
    return foodList.where((food) {
      final matchesCategory =
          selectedCategory == 'All' || selectedCategory.isEmpty
              ? true
              : food.category == selectedCategory;

      final matchesSearch =
          food.name.toLowerCase().contains(_searchQuery.toLowerCase());

      return matchesCategory && matchesSearch;
    }).toList();
  }
}
