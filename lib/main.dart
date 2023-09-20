import 'package:dictionary/app_widget.dart';
import 'package:dictionary/configs/di/app_modules_injection.dart';
import 'package:flutter/material.dart';

void main() {
  AppModulesInjection.init();

  runApp(
    const AppWidget(),
  );
}
