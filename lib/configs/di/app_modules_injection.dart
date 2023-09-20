import 'package:dictionary/configs/di/base_injection.dart';
import 'package:dictionary/configs/di/controllers_injection.dart';

class AppModulesInjection extends BaseInjection {
  AppModulesInjection.init() {
    ControllersInjection.init();
  }
}
