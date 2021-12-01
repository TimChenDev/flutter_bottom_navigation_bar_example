import 'package:flutter/material.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class ShopPage3 extends StatelessWidget {
  static const String route = 'ShopPage3';

  const ShopPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'ShopPage3'),
      body: const Text('This is ShopPage3'),
    );
  }
}
