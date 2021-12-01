import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/navigation_service.dart';
import 'package:flutter_tab_example/component/tab_service.dart';
import 'package:flutter_tab_example/page/cart_page_2.dart';
import 'package:flutter_tab_example/page/login_page.dart';

class CartPage extends StatefulWidget {
  static const String route = 'CartPage';

  const CartPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('購物車頁面'),
            TextButton(
              onPressed: () {
                locator<NavigationService>().push(LoginPage.route);
              },
              child: const Text('登入'),
            ),
            TextButton(
              onPressed: () {
                locator<TabService>().push(CartPage2.route);
              },
              child: const Text('to CartPage2'),
            ),
          ],
        ),
      ),
    );
  }
}
