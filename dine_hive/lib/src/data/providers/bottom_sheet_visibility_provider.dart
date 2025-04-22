import 'package:flutter/material.dart';

class BottomSheetVisibilityProvider extends ChangeNotifier {
  bool _showBottomSheet = true;

  bool get showBottomSheet => _showBottomSheet;

  void updateVisibility(double offset) {
    if (offset > 10 && _showBottomSheet) {
      _showBottomSheet = false;
      notifyListeners();
    } else if (offset <= 0 && !_showBottomSheet) {
      _showBottomSheet = true;
      notifyListeners();
    }
  }
}
