import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/tab_service.dart';

class TabProvider extends ChangeNotifier {
  static final TabProvider _instance = TabProvider();

  static TabProvider getInstance() => _instance;

  /// notifyListeners 執行後, 所有依賴 TabProvider.getIndex 的地方都會進行刷新的動作
  int getIndex() {
    return locator<TabService>().index;
  }

  /// 使用 notifyListeners 的地方必須加上 listen: false,
  void setIndex(int index) {
    if (index < 0 || index >= locator<TabService>().navigatorKeys.length) {
      throw Exception('指定的 index, 超過 tab 數量');
    } else {
      locator<TabService>().index = index;
      notifyListeners();
    }
  }
}
