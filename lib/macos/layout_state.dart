import 'package:flutter/widgets.dart';
import 'package:resume/macos/menu_tile.dart';

import 'macos_menu.dart';

abstract class LayoutState<T extends StatefulWidget> extends State<T> implements ChangedReceiver {
  late        Widget    page;
  late final  MacOSMenu menu;

  LayoutState() {
    menu = MacOSMenu(notifyee: this);
    page = menu.page;
  }

  @override
  void changed(Widget new_page) {
    setState(() {
      page = new_page;
    });
  }
}