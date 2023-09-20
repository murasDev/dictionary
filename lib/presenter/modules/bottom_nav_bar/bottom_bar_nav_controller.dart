import 'package:flutter/material.dart';

class BottomBarNavController extends ChangeNotifier {
  int currentPage = 0;

  late PageController pageController = PageController(initialPage: currentPage);

  setCurrentPage(int page) {
    currentPage = page;
    notifyListeners();
  }
}
