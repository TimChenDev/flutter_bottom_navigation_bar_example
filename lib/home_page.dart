import 'package:flutter/material.dart';
import 'package:flutter_tab_example/page/cart_page.dart';
import 'package:flutter_tab_example/page/member_page.dart';
import 'package:flutter_tab_example/page/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

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
            onGenerateRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                settings: settings,
                builder: (_) {
                  return const ShopPage();
                },
              );
            },
          ),
          Navigator(
            onGenerateRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                settings: settings,
                builder: (_) {
                  return const CartPage();
                },
              );
            },
          ),
          Navigator(
            onGenerateRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                settings: settings,
                builder: (_) {
                  return const MemberPage();
                },
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
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
