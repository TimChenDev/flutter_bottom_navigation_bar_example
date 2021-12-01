import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/router.dart' as router;
import 'package:flutter_tab_example/component/tab_service.dart';
import 'package:flutter_tab_example/page/cart_page.dart';
import 'package:flutter_tab_example/page/member_page.dart';
import 'package:flutter_tab_example/page/shop_page.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  const HomePage({Key? key, this.title = 'Flutter Demo Home Page'})
      : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: [
          Navigator(
            key: locator<TabService>().navigatorKeys[0],
            initialRoute: ShopPage.route,
            onGenerateRoute: router.generateRoute,
          ),
          Navigator(
            key: locator<TabService>().navigatorKeys[1],
            initialRoute: CartPage.route,
            onGenerateRoute: router.generateRoute,
          ),
          Navigator(
            key: locator<TabService>().navigatorKeys[2],
            initialRoute: MemberPage.route,
            onGenerateRoute: router.generateRoute,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          // 點擊 tab 切換時, 同時也要通知 TabService 更新他那邊的 index
          locator<TabService>().index = index;
          setState(() {
            _pageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: "賣場",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "購物車",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "會員中心",
          ),
        ],
      ),
    );
  }
}
