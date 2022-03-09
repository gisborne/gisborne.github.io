import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/menu_tile.dart';
import 'package:resume/macos/menu_content.dart';
import 'package:resume/macos/selected_tile.dart';

class MacOSMenu extends StatefulWidget {
  final ChangedReceiver notifyee;
  late final List<MenuTile> children;
  late final MenuTile? tail;
  late Widget page;

  MacOSMenu({
      required
    this.notifyee,
    this.tail,
    Key? key,
  }) :
      children = menuItems(notifyee),
      super(key: key)
  {
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
  static final portrait = Image.asset('assets/guyren_portrait.png');

  _MacOSMenuState({
    required
    this.notifyee
  });

  @override
  Widget build(BuildContext context) {
    var _regularMenu = Expanded(child: ListView(
      padding: EdgeInsets.zero,
      children: widget.children.map(
        (tile) => tile.page == widget.page ? show_chosen(tile) : tile
      ).toList() as List<Widget>
    ));

    if(widget.tail == null) {
      return _regularMenu;
    } else {
      return Container(
        padding: EdgeInsets.all(4.0),
        height: double.infinity,
        child: Column(
          children: [
            portrait,
            _regularMenu,
            widget.tail as Widget
          ],
        ),
      );
    }
  }

  Widget show_chosen(Widget t) {
    return SelectedTile(
      tile: t
    );
  }
}
