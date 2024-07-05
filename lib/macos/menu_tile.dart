import 'package:flutter/material.dart';

class MenuTile extends ListTile {
  final Widget page;
  final String titleText;
  final ChangedReceiver notifyee;

  MenuTile({
      required
    Widget leading,
      required
    this.page,
      required
    this.titleText,
      required
    this.notifyee,
    Key? key
  }) :
      super(
        leading: leading,
        title: Text(titleText),
        key: key,
        onTap: () => notifyee.changed(page),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
  );
}

abstract class ChangedReceiver {
  void changed(Widget newPage);
}