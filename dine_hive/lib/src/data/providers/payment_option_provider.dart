import 'package:flutter/material.dart';

enum PaymentOption { mobileBanking, card }

class PaymentOptionProvider extends ChangeNotifier {
  PaymentOption _selectedOption = PaymentOption.mobileBanking;

  PaymentOption get selectedOption => _selectedOption;

  void selectOption(PaymentOption option) {
    _selectedOption = option;
    notifyListeners();
  }
}
