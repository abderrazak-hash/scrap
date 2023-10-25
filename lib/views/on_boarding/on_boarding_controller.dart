import 'package:flutter/material.dart';

class OnBoardingController extends ChangeNotifier {
  final PageController controller = PageController();
  int i = 0;
  int currentScreen() {
    try {
      return (controller.page!).round();
    } catch (e) {
      return 0;
    }
  }

  void nextPage() {
    controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  void changeI(int index) {
    if (index == 2) {
      i = 2;
    } else {
      i = 0;
    }
    notifyListeners();
  }

  void goPage(index) {
    // changeI(index);
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }
}
