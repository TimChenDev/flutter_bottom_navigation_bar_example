import 'package:flutter/material.dart';
import 'package:flutter_tab_example/component/locator.dart';
import 'package:flutter_tab_example/component/tab_service.dart';
import 'package:flutter_tab_example/page/member_page_3.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class MemberPage2 extends StatelessWidget {
  static const String route = 'MemberPage2';

  const MemberPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'MemberPage2'),
      body: TextButton(
        onPressed: () {
          locator<TabService>().push(MemberPage3.route);
        },
        child: const Text('to MemberPage3'),
      ),
    );
  }
}
