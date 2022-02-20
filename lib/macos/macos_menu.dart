import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resume/macos/menu_tile.dart';
import 'package:resume/macos/menu_content.dart';
import 'package:resume/macos/selected_tile.dart';

class MacOSMenu extends StatefulWidget {
  final ChangedReceiver notifyee;
  late final List<MenuTile> children;
  late Widget page;

  MacOSMenu({
      required
     this.notifyee,
    Key? key,
  }):
        children = menuItems(notifyee),
        super(key: key) {
    page = children.first.page;
  }

  @override
  State<StatefulWidget> createState() {
    return _MacOSMenuState(notifyee: notifyee);
  }

  static MenuTile TileFor(MenuInfo c, ChangedReceiver notifyee) {
    var tile = MenuTile(
      leading: Icon(c.item1, size: 32, semanticLabel: c.item2),
      page: c.item3,
      title_text: c.item2,
      notifyee: notifyee
    );

    return tile;
  }

  static List<MenuTile> menuItems(ChangedReceiver notifyee) {
    return config.map(
      (c) => (TileFor(c, notifyee))
    ).toList() as List<MenuTile>;
  }
}

class _MacOSMenuState extends State<MacOSMenu> {
  late final ChangedReceiver notifyee;

  _MacOSMenuState({
    required
    this.notifyee
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: widget.children.map(
        (tile) => tile.page == widget.page ? show_chosen(tile) : tile
      ).toList() as List<Widget>
    );
  }

  Widget show_chosen(Widget t) {
    return SelectedTile(
      tile: t
    );
  }
}
