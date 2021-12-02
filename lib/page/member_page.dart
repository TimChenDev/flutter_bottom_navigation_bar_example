import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/navigation_service.dart';
import 'package:flutter_tab_example/component/tab_service.dart';
import 'package:flutter_tab_example/page/login_page.dart';
import 'package:flutter_tab_example/page/member_page_2.dart';

class MemberPage extends StatefulWidget {
  static const String route = 'MemberPage';

  const MemberPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('會員中心頁面'),
            TextButton(
              onPressed: () {
                locator<NavigationService>().push(LoginPage.route);
              },
              child: const Text('登入'),
            ),
            TextButton(
              onPressed: () {
                locator<TabService>().push(MemberPage2.route);
              },
              child: const Text('前往會員中心第二頁'),
            ),
          ],
        ),
      ),
    );
  }
}
