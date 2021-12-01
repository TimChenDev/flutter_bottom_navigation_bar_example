import 'package:flutter/material.dart';
import 'package:flutter_tab_example/page/member_page_3.dart';
import 'package:flutter_tab_example/util/ui_utils.dart';

class MemberPage2 extends StatelessWidget {
  const MemberPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: 'MemberPage2'),
      body: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const MemberPage3();
              },
            ),
          );
        },
        child: const Text('to MemberPage3'),
      ),
    );
  }
}
