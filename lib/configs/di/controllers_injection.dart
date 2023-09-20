import 'package:dictionary/configs/di/base_injection.dart';
import 'package:dictionary/presenter/modules/bottom_nav_bar/bottom_bar_nav_controller.dart';
import 'package:dictionary/presenter/modules/favorites/favorites_controller.dart';
import 'package:dictionary/presenter/modules/history/history_controller.dart';
import 'package:dictionary/presenter/modules/home/home_controller.dart';

class ControllersInjection extends BaseInjection {
  ControllersInjection.init() {
    _injectBottomBarNav();
    _injectHome();
    _injectHistory();
    _injectFavorites();
  }

  void _injectBottomBarNav() {
    locator.registerLazySingleton<BottomBarNavController>(
      () => BottomBarNavController(),
    );
  }

  void _injectHome() {
    locator.registerLazySingleton<HomeController>(
      () => HomeController(),
    );
  }

  void _injectHistory() {
    locator.registerLazySingleton<HistoryController>(
      () => HistoryController(),
    );
  }

  void _injectFavorites() {
    locator.registerLazySingleton<FavoritesController>(
      () => FavoritesController(),
    );
  }
}
