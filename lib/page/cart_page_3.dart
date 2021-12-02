import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/tab_provider.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';
import 'package:provider/provider.dart';

class CartPage3 extends StatelessWidget {
  static const String route = 'CartPage3';

  const CartPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'CartPage3'),
      body: Center(
        child: TextButton(
          onPressed: () {
            // 這裡是購物車第三頁, 透過 TabProvider 切換 index
            // 任何使用 TabProvider getIndex 的地方, 都會同步更新 UI
            Provider.of<TabProvider>(context, listen: false).setIndex(2);
          },
          child: const Text('前往會員中心'),
        ),
      ),
    );
  }
}
