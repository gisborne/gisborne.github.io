import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/menu_content.dart';
import 'package:resume/macos/menu_tile.dart';
import 'package:resume/macos/selected_tile.dart';

class SideMenu extends StatefulWidget {
  final ChangedReceiver notifyee;
  late final MenuTile tail;

  SideMenu({
      required
    this.notifyee,
      required
    this.tail,
    Key? key,
  }) :
      super(key: key);

  @override
  State<StatefulWidget> createState() => _SideMenuState(notifyee: notifyee);
}

class _SideMenuState extends State<SideMenu> implements ChangedReceiver {
  late final ChangedReceiver notifyee;
  late final List<MenuTile> children;
  late Widget page;
  static final portrait = Image.asset('assets/guyren_portrait.png');

  _SideMenuState({
    required
    this.notifyee
  }) {
    children = menuItems(notifyee);
    page = children.first.page;

    Future.delayed(const Duration(milliseconds: 100), () {
      notifyee.changed(page);
    });
  }

  @override
  Widget build(BuildContext context) {
    var _regularMenu = Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: children.map(
          (tile) => _maybeSelectedTile(tile)
      ).toList()
    ));

    return Container(
      padding: const EdgeInsets.all(4.0),
      height: double.infinity,
      child: Column(
        children: [
          portrait,
          _regularMenu,
          widget.tail
        ],
      ),
    );
  }

  Widget _maybeSelectedTile(MenuTile tile) {
    return tile.page == page ? SelectedTile(tile: tile) : tile;
  }

  MenuTile tileFor(MenuInfo c, ChangedReceiver notifyee) {
    var tile = MenuTile(
      leading: Icon(c.item1, size: 32, semanticLabel: c.item2),
      page: c.item3,
      titleText: c.item2,
      notifyee: this
    );

    return tile;
  }

  List<MenuTile> menuItems(ChangedReceiver notifyee) {
    return config.map(
      (c) => (tileFor(c, notifyee))
    ).toList();
  }

  @override
  void changed(Widget newPage) {
    setState(() {
      page = newPage;
      notifyee.changed(newPage);
    });
  }
}
