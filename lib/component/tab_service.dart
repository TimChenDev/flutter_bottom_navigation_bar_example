import 'package:flutter/material.dart';

/// 跟 navigation service 的 key 不同
/// 這裡是用來管理一個 tab 裡面的 navigator keys
/// 負責 tab 子頁面 push 跟 pop 的工作
/// key 的數量可根據 tab 數量做調整
class TabService {
  int index = 0;

  /// manage keys, 有多少 tab 就要建立多少 key
  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

  NavigatorState _getState() {
    if (index < 0 || index >= navigatorKeys.length) {
      index = 0;
    }
    return navigatorKeys[index]!.currentState!;
  }

  Future<dynamic> push(String routeName, {dynamic arguments}) async {
    return await _getState().pushNamed(routeName, arguments: arguments);
  }

  /// 檢查 navigator route 裡面是否能夠 pop 回去
  /// 如果可以就 pop, 不行就返回 false
  Future<bool> maybePop() async {
    return !await Navigator.maybePop(_getState().context);
  }

  void goBack() {
    return _getState().pop();
  }
}
