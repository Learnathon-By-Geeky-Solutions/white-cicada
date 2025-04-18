import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class ConfettiProvider with ChangeNotifier {
  final ConfettiController confettiController =
  ConfettiController(duration: const Duration(seconds: 10));

  void startConfetti() {
    confettiController.play();
    notifyListeners();
  }

  void stopConfetti() {
    confettiController.stop();
    notifyListeners();
  }

  void disposeController() {
    confettiController.dispose();
  }
}
