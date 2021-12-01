import 'package:flutter/material.dart';
import 'package:flutter_tab_example/page/cart_page_2.dart';
import 'package:flutter_tab_example/page/login_page.dart';

class CartPage extends StatefulWidget {
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              child: const Text('登入'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return const CartPage2();
                    },
                  ),
                );
              },
              child: const Text('to CartPage2'),
            ),
          ],
        ),
      ),
    );
  }
}
