import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/tab_service.dart';
import 'package:flutter_tab_example/page/cart_page_3.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class CartPage2 extends StatelessWidget {
  static const String route = 'CartPage2';

  const CartPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'CartPage2'),
      body: Center(
        child: TextButton(
          onPressed: () {
            locator<TabService>().push(CartPage3.route);
          },
          child: const Text('前往購物車第三頁'),
        ),
      ),
    );
  }
}
