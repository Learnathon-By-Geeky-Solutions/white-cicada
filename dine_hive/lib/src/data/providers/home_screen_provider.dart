import 'package:dine_hive/core/widgets/offer_card.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenProvider extends ChangeNotifier{
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _carouselItems = [const OfferCard(),const OfferCard(),const OfferCard()];

  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;
  List<Widget> get carouselItems => _carouselItems;

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void updatePage(int pageIndex) {
    _pageController.jumpToPage(pageIndex);
    updateIndex(pageIndex);
  }



  String _selectedCategory = "All";

  String get selectedCategory => _selectedCategory;

  void selectCategory(BuildContext context, String category) {
    _selectedCategory = category;
    notifyListeners();
  }
}