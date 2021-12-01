import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/navigation_service.dart';
import 'package:flutter_tab_example/component/router.dart' as router;
import 'package:flutter_tab_example/home_page.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
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
