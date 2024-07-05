import 'package:flutter/cupertino.dart';

import 'about.dart';
import 'menu_tile.dart';

class AboutTile extends MenuTile {
  AboutTile({
      required
    ChangedReceiver notifyee,
    Key? key
  }) :
      super(
        notifyee: notifyee,
        leading: const Icon(CupertinoIcons.info),
        titleText: 'About',
        page: About(),
        key: key,
      );
}