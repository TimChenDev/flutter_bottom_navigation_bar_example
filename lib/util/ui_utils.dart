import 'package:flutter/material.dart';

AppBar buildAppBar({
  required BuildContext context,
  String title = "",
  bool showLeftButton = true,
}) {
  return AppBar(
    title: Text(title),
    elevation: 0,
    centerTitle: true,
    leading: showLeftButton
        ? IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        : Container(),
  );
}
