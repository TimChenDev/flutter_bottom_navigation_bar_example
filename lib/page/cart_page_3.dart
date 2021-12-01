import 'package:flutter/material.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class CartPage3 extends StatelessWidget {
  static const String route = 'CartPage3';

  const CartPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'CartPage3'),
      body: const Text('This is CartPage3'),
    );
  }
}
