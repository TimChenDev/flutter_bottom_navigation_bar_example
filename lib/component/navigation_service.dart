import 'package:flutter/material.dart';

/// 透過共用的 navigatorKey, 從這裡 push navigator
/// 只需要提供 name, 不需要 context
/// 負責一般頁面 push 跟 pop 的工作
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState _getState() {
    return navigatorKey.currentState!;
  }

  Future<dynamic> push(String routeName, {dynamic arguments}) async {
    return await _getState().pushNamed(routeName, arguments: arguments);
  }

  void goBack() {
    return _getState().pop();
  }
}
