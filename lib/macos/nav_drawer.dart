import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/menu_tile.dart';

import 'macos_menu.dart';

class NavDrawer extends StatelessWidget {
  final ChangedReceiver notifyee;
  final MacOSMenu menu;

  NavDrawer({
      required
    this.notifyee,
    Key? key
  }):
      menu = MacOSMenu(notifyee: notifyee),
      super(key: key);

  Widget get current_page => menu.page;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: menu
    );
  }
}