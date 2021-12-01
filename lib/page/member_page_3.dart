import 'package:flutter/material.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class MemberPage3 extends StatelessWidget {
  static const String route = 'MemberPage3';

  const MemberPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'MemberPage3'),
      body: const Text('This is MemberPage3'),
    );
  }
}
