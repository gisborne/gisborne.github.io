import 'package:flutter/widgets.dart';
import 'package:resume/macos/about_tile.dart';
import 'package:resume/macos/menu_tile.dart';

import 'macos_menu.dart';

abstract class LayoutState<T extends StatefulWidget> extends State<T> implements ChangedReceiver {
  late final  MacOSMenu menu;

  LayoutState() {
    menu = MacOSMenu(
        tail: AboutTile(
          notifyee: this,
        ),
        notifyee: this
    );
  }

  @override
  void changed(Widget newPage) {
    setState(() {
      menu.page = newPage;
    });
  }
}