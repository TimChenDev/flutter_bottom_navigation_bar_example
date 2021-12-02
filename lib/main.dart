import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/navigation_service.dart';
import 'package:flutter_tab_example/component/router.dart' as router;
import 'package:flutter_tab_example/component/tab_provider.dart';
import 'package:flutter_tab_example/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(const MyProvider());
}

/// MyApp 外面要多包一層 MultiProvider
/// 不能直接包喔, 一定要開 class 去包
/// 否則 MyApp 會說 context 找不到 provider, 必須透過多包一層的動作
/// MyApp initial MaterialApp 的 context 才會有 provider 的存在
class MyProvider extends StatelessWidget {
  const MyProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TabProvider>.value(
            value: TabProvider.getInstance()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.route,
      onGenerateRoute: router.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
