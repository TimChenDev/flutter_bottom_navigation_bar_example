import 'package:flutter/material.dart';
import 'package:flutter_tab_example/page/shop_page_3.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class ShopPage2 extends StatelessWidget {
  const ShopPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'ShopPage2'),
      body: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const ShopPage3();
              },
            ),
          );
        },
        child: const Text('to ShopPage3'),
      ),
    );
  }
}
