import 'package:flutter_tab_example/component/navigation_service.dart';
import 'package:flutter_tab_example/component/tab_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

/// 管理 global object instance
void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => TabService());
}
