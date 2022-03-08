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
        title_text: 'About',
        page: About(),
        key: key,
      );
}