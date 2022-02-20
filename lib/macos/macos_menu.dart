import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resume/macos/menu_tile.dart';
import 'package:resume/macos/menu_content.dart';
import 'package:resume/macos/selected_tile.dart';
import '../shared/menu.dart';

class MacOSMenu extends Menu {
  final ChangedReceiver notifyee;
  late final List<Widget> children;
  late Widget page;

  MacOSMenu({
      required
     this.notifyee,
    Key? key,
  }):
    children = menuItems(notifyee),
    super(key: key) {
    page = children.first;
  }

  @override
  State<StatefulWidget> createState() {
    return _MacOSMenuState(notifyee: notifyee);
  }

  static MenuTile TileFor(Info c, ChangedReceiver notifyee) {
    var tile = MenuTile(
        leading: Icon(c.item1, size: 32, semanticLabel: c.item2),
        page: c.item3,
        title_text: c.item2,
        notifyee: notifyee
    );

    return tile;
  }

  static List<Widget> menuItems(ChangedReceiver notifyee) {
    return config.map(
      (c) => (TileFor(c, notifyee))
    ).toList() as List<Widget>;
  }
}

class _MacOSMenuState extends State<MacOSMenu> {
  late final ChangedReceiver notifyee;

  _MacOSMenuState({
    required
    this.notifyee,
    Key? key
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: widget.children.map(
        (tile) => tile == widget.page ? show_chosen(tile) : tile
      ).toList() as List<Widget>
    );
  }

  Widget show_chosen(Widget t) {
    return SelectedTile(
      tile: t
    );
  }
}
