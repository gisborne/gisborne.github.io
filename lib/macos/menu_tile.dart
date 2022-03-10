import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/material.dart';

class MenuTile extends CupertinoListTile {
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
        border: Border.all(width: 0.1, color: Colors.black),
  );
}

abstract class ChangedReceiver {
  void changed(Widget newPage);
}