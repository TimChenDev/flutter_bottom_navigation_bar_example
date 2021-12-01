import 'package:flutter/material.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class LoginPage extends StatefulWidget {
  static const String route = 'LoginPage';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context: context,
        title: '登入',
      ),
      body: const Center(
        child: Text('登入頁面'),
      ),
    );
  }
}
