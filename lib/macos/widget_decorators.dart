import 'package:flutter/cupertino.dart';

extension Pointer on Widget {
  Widget withPointer({MouseCursor pointer = SystemMouseCursors.click})
    => MouseRegion(
      child: this,
      cursor: pointer,
    );
}

