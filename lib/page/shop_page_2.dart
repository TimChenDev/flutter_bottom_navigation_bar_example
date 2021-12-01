import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/tab_service.dart';
import 'package:flutter_tab_example/page/shop_page_3.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class ShopPage2 extends StatelessWidget {
  static const String route = 'ShopPage2';

  const ShopPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'ShopPage2'),
      body: TextButton(
        onPressed: () {
          locator<TabService>().push(ShopPage3.route);
        },
        child: const Text('to ShopPage3'),
      ),
    );
  }
}
