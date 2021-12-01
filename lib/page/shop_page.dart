import 'package:flutter/material.dart';
import 'package:flutter_tab_example/page/login_page.dart';
import 'package:flutter_tab_example/page/shop_page_2.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('賣場頁面'),
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
                      return const ShopPage2();
                    },
                  ),
                );
              },
              child: const Text('to ShopPage2'),
            ),
          ],
        ),
      ),
    );
  }
}
