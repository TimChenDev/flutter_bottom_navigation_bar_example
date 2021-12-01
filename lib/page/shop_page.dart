import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/navigation_service.dart';
import 'package:flutter_tab_example/page/login_page.dart';
import 'package:flutter_tab_example/page/shop_page_2.dart';

class ShopPage extends StatefulWidget {
  static const String route = 'ShopPage';

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
                locator<NavigationService>().push(LoginPage.route);
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
