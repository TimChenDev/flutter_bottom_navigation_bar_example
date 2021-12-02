import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/router.dart' as router;
import 'package:flutter_tab_example/component/tab_provider.dart';
import 'package:flutter_tab_example/component/tab_service.dart';
import 'package:flutter_tab_example/page/cart_page.dart';
import 'package:flutter_tab_example/page/member_page.dart';
import 'package:flutter_tab_example/page/shop_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  const HomePage({Key? key, this.title = 'Flutter Demo Home Page'})
      : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          // 如果沒有加這段的話, 不會去檢查 Tab 底下的 Navigator 是否有尚未關閉的 route
          // Android 點擊返回鍵會直接把 HomePage 關掉
          // 必須加上 maybePop 的判斷, 使用 TabService 的 navigatorKeys 去檢查是否還
          // 有路徑可返回, 確定 Tab 裡面沒有路徑可返回才關閉 HomePage
          return locator<TabService>().maybePop();
        },
        child: IndexedStack(
          index: Provider.of<TabProvider>(context).getIndex(),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Provider.of<TabProvider>(context).getIndex(),
        onTap: (index) {
          // 改成對 TabProvider 的 index 進行修改
          // 所有取自 TabProvider index 的地方都會同步刷新畫面
          Provider.of<TabProvider>(context, listen: false).setIndex(index);
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
