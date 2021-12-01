import 'package:flutter/material.dart';
import 'package:flutter_tab_example/home_page.dart';
import 'package:flutter_tab_example/page/cart_page.dart';
import 'package:flutter_tab_example/page/cart_page_2.dart';
import 'package:flutter_tab_example/page/cart_page_3.dart';
import 'package:flutter_tab_example/page/login_page.dart';
import 'package:flutter_tab_example/page/member_page.dart';
import 'package:flutter_tab_example/page/member_page_2.dart';
import 'package:flutter_tab_example/page/member_page_3.dart';
import 'package:flutter_tab_example/page/shop_page.dart';
import 'package:flutter_tab_example/page/shop_page_2.dart';
import 'package:flutter_tab_example/page/shop_page_3.dart';

/// 管理 route 對應的頁面
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.route:
      return MaterialPageRoute(builder: (_) => const HomePage());
    case LoginPage.route:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case ShopPage.route:
      return MaterialPageRoute(builder: (_) => const ShopPage());
    case ShopPage2.route:
      return MaterialPageRoute(builder: (_) => const ShopPage2());
    case ShopPage3.route:
      return MaterialPageRoute(builder: (_) => const ShopPage3());
    case CartPage.route:
      return MaterialPageRoute(builder: (_) => const CartPage());
    case CartPage2.route:
      return MaterialPageRoute(builder: (_) => const CartPage2());
    case CartPage3.route:
      return MaterialPageRoute(builder: (_) => const CartPage3());
    case MemberPage.route:
      return MaterialPageRoute(builder: (_) => const MemberPage());
    case MemberPage2.route:
      return MaterialPageRoute(builder: (_) => const MemberPage2());
    case MemberPage3.route:
      return MaterialPageRoute(builder: (_) => const MemberPage3());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
