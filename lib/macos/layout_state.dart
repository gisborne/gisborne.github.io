import 'package:flutter/widgets.dart';
import 'package:resume/macos/about_tile.dart';
import 'package:resume/macos/menu_tile.dart';

import 'side_menu.dart';

abstract class LayoutState<T extends StatefulWidget> extends State<T> implements ChangedReceiver {
  late final SideMenu menu;
  Widget? page;

  LayoutState() {
    menu = SideMenu(
      tail: AboutTile(
        notifyee: this,
      ),
      notifyee: this
    );
  }

  @override
  void changed(Widget newPage) {
    setState(() {
      page = newPage;
    });
  }
}