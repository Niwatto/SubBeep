import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubbeepState extends GetxController {
  final RxInt _currentPageIndex = 0.obs;
  final PageController _pageController = PageController();

  int get currentPageIndex => _currentPageIndex.value;
  PageController get pageController => _pageController;

  void setCurrentPageIndex(int index) {
    _currentPageIndex.value = index;
  }

  void onTapBottomNavigationItem({required int index}) async {
    setCurrentPageIndex(index);
    await pageController.animateToPage(
      currentPageIndex,
      duration: const Duration(milliseconds: 100),
      curve: Curves.ease,
    );
  }
}
