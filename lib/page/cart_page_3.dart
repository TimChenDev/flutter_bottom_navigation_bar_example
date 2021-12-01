import 'package:flutter/material.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class CartPage3 extends StatelessWidget {
  const CartPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'CartPage3'),
      body: const Text('This is CartPage3'),
    );
  }
}
