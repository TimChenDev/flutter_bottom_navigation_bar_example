import 'package:flutter/material.dart';
import 'package:flutter_tab_example/page/cart_page_3.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class CartPage2 extends StatelessWidget {
  const CartPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'CartPage2'),
      body: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const CartPage3();
              },
            ),
          );
        },
        child: const Text('to CartPage3'),
      ),
    );
  }
}
