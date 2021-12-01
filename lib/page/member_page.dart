import 'package:flutter/material.dart';
import 'package:flutter_tab_example/page/login_page.dart';
import 'package:flutter_tab_example/page/member_page_2.dart';

class MemberPage extends StatefulWidget {
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
                      return const MemberPage2();
                    },
                  ),
                );
              },
              child: const Text('to MemberPage2'),
            ),
          ],
        ),
      ),
    );
  }
}
