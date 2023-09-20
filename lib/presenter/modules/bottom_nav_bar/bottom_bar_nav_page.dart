import 'package:dictionary/configs/di/base_injection.dart';
import 'package:dictionary/presenter/modules/bottom_nav_bar/bottom_bar_nav_controller.dart';
import 'package:dictionary/presenter/modules/favorites/favorites_page.dart';
import 'package:dictionary/presenter/modules/history/history_page.dart';
import 'package:dictionary/presenter/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class BottomBarNavPage extends StatelessWidget {
  BottomBarNavPage({super.key});

  final _controller = BaseInjection.getIt<BottomBarNavController>();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Scaffold(
            body: PageView(
              onPageChanged: _controller.setCurrentPage,
              controller: _controller.pageController,
              children: const [HomePage(), HistoryPage(), FavoritesPage()],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _controller.currentPage,
              selectedItemColor: Colors.indigo,
              onTap: (pageIndex) {
                _controller.pageController.animateToPage(
                  pageIndex,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.ease,
                );
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt),
                  label: "Words list",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history_edu),
                  label: "History",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  label: "Favorites",
                ),
              ],
            ),
          );
        });
  }
}
