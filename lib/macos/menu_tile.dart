import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

class MenuTile extends CupertinoListTile {
  final Widget page;
  final String title_text;
  final ChangedReceiver notifyee;

  MenuTile({
      required
    Widget leading,
      required
    this.page,
      required
    this.title_text,
      required
    this.notifyee,
    Key? key
  }) :
      super(
      leading: leading,
      title: Text(title_text),
      key: key,
      onTap: () => notifyee.changed(page),
  );
}

abstract class ChangedReceiver {
  void changed(Widget new_page);
}