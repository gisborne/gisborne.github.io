import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';

class MenuTile extends CupertinoListTile {
  final Widget page;
  final String title_text;
  final void Function() tapped;

  MenuTile({
      required
    Widget leading,
      required
    this.page,
      required
    this.title_text,
      required
    this.tapped,
    Key? key
  }) : super(
      leading: leading,
      title: Text(title_text),
      onTap: tapped,
      key: key
  );
}